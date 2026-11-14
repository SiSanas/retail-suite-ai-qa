# Unattended run for Task Scheduler / CI.
# Usage:  .\scripts\run.ps1 smoke
#         .\scripts\run.ps1 regression "Item master"
param(
  [Parameter(Mandatory = $true)][ValidateSet("smoke", "regression")] [string]$Suite,
  [string]$Filter = ""
)
$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")
New-Item -ItemType Directory -Force -Path "reports\_logs" | Out-Null
$stamp = Get-Date -Format "yyyyMMdd-HHmm"
$log = "reports\_logs\$Suite-$stamp.log"

claude -p "/$Suite $Filter" --output-format text 2>&1 | Tee-Object -FilePath $log
exit $LASTEXITCODE
