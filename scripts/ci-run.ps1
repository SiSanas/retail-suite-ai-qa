# Nightly / on-demand QA run, used by .github/workflows/nightly-qa.yml (also works by hand).
#   .\scripts\ci-run.ps1                      -> smoke, then regression
#   .\scripts\ci-run.ps1 -Suites smoke
# Needs env vars RS_USERNAME and RS_PASSWORD (GitHub secrets). Optional: QA_CLAUDE_TOKEN.
# Exit code: 0 = everything passed, 1 = a test failed / was blocked / no report was produced.
param([string]$Suites = "smoke,regression")

$ErrorActionPreference = "Continue"
Set-Location (Join-Path $PSScriptRoot "..")
$root = (Get-Location).Path
$start = Get-Date
$runUrl = $env:RUN_URL
$exitCode = 0

if ($env:QA_CLAUDE_TOKEN) { $env:CLAUDE_CODE_OAUTH_TOKEN = $env:QA_CLAUDE_TOKEN }
if (-not $env:RS_USERNAME -or -not $env:RS_PASSWORD) {
  Write-Host "::error::RS_USERNAME / RS_PASSWORD are not set (add them as GitHub repository secrets)."
  exit 1
}

New-Item -ItemType Directory -Force -Path "reports\_logs", "artifacts" | Out-Null
"RS_USERNAME=$($env:RS_USERNAME)`r`nRS_PASSWORD=$($env:RS_PASSWORD)" | Set-Content -Path "config\secrets.env" -Encoding ascii

try {
  foreach ($suite in ($Suites -split ",") | ForEach-Object { $_.Trim() } | Where-Object { $_ }) {
    $stamp = Get-Date -Format "yyyyMMdd-HHmm"
    $log = "reports\_logs\$suite-$stamp.log"
    Write-Host "=== Running /$suite ($stamp) ==="
    & claude -p "/$suite" --mcp-config "config/mcp.ci.json" --strict-mcp-config --output-format text 2>&1 |
      ForEach-Object { "$_" } | Tee-Object -FilePath $log
    Write-Host "=== /$suite finished (claude exit code $LASTEXITCODE) ==="
  }
}
finally {
  Remove-Item "config\secrets.env" -Force -ErrorAction SilentlyContinue
}

# ---------- Collect results ----------
$history = "reports\history.csv"
if (-not (Test-Path $history)) {
  "date,suite,total,passed,failed,blocked,skipped,verdict,report,run_url" | Set-Content $history -Encoding utf8
}

$summary = @("# Retail Suite nightly QA - $(Get-Date -Format 'yyyy-MM-dd HH:mm')", "")
$summary += "| Suite | Total | Passed | Failed | Blocked | Skipped | Result |"
$summary += "|---|---|---|---|---|---|---|"
$failLines = @()

foreach ($suite in ($Suites -split ",") | ForEach-Object { $_.Trim() } | Where-Object { $_ }) {
  $dir = Get-ChildItem "reports" -Directory |
    Where-Object { $_.Name -like "$suite-*" -and $_.CreationTime -ge $start.AddMinutes(-1) } |
    Sort-Object CreationTime -Descending | Select-Object -First 1
  $csv = if ($dir) { Join-Path $dir.FullName "results.csv" } else { $null }

  if (-not $csv -or -not (Test-Path $csv)) {
    $summary += "| $suite | - | - | - | - | - | NO REPORT |"
    $failLines += "- **$suite**: Claude did not produce results.csv. Check the log in the run artifacts."
    "$(Get-Date -Format s),$suite,0,0,0,0,0,NO-REPORT,,$runUrl" | Add-Content $history -Encoding utf8
    $exitCode = 1
    continue
  }

  $rows = @(Import-Csv $csv)
  $passed  = @($rows | Where-Object { $_.status -like "PASS*" }).Count
  $failed  = @($rows | Where-Object { $_.status -eq "FAIL" }).Count
  $blocked = @($rows | Where-Object { $_.status -eq "BLOCKED" }).Count
  $skipped = @($rows | Where-Object { $_.status -eq "SKIPPED" }).Count
  $verdict = if ($failed + $blocked -eq 0) { "PASS" } else { "FAIL" }
  if ($verdict -eq "FAIL") { $exitCode = 1 }
  $icon = if ($verdict -eq "PASS") { "PASS" } else { "**FAIL**" }
  $rel = "reports/$($dir.Name)/report.md"

  $summary += "| $suite | $($rows.Count) | $passed | $failed | $blocked | $skipped | $icon |"
  foreach ($r in $rows | Where-Object { $_.status -in @("FAIL", "BLOCKED") }) {
    $failLines += "- **$($r.id)** $($r.title): $($r.status) $($r.classification) - $($r.notes)"
  }
  "$(Get-Date -Format s),$suite,$($rows.Count),$passed,$failed,$blocked,$skipped,$verdict,$rel,$runUrl" |
    Add-Content $history -Encoding utf8
}

if ($failLines.Count -gt 0) { $summary += ""; $summary += "## Failures"; $summary += $failLines }
if ($runUrl) { $summary += ""; $summary += "Run: $runUrl" }

# GitHub job summary (shown on the run page)
if ($env:GITHUB_STEP_SUMMARY) { $summary | Add-Content $env:GITHUB_STEP_SUMMARY -Encoding utf8 }

# reports/LATEST.md: latest result + last 30 runs, committed to the repo
$latest = $summary + @("", "## History (last 30 runs)", "",
  "| Date | Suite | Total | Passed | Failed | Blocked | Verdict | Report |", "|---|---|---|---|---|---|---|---|")
$hist = @(Import-Csv $history) | Select-Object -Last 30
[array]::Reverse($hist)
foreach ($h in $hist) {
  $link = if ($h.report) { "[report]($($h.report -replace '^reports/',''))" } else { "-" }
  $latest += "| $($h.date) | $($h.suite) | $($h.total) | $($h.passed) | $($h.failed) | $($h.blocked) | $($h.verdict) | $link |"
}
$latest | Set-Content "reports\LATEST.md" -Encoding utf8

$summary | ForEach-Object { Write-Host $_ }
exit $exitCode
