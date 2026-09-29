<#
.SYNOPSIS
  Launcher wrapper from the repository root for stop-all.ps1 in attendande_system.
#>
param(
    [switch]$IncludeDocker
)

$targetScript = Join-Path $PSScriptRoot "attendande_system\stop-all.ps1"
if (Test-Path $targetScript) {
    & $targetScript -IncludeDocker:$IncludeDocker
} else {
    Write-Error "Could not find $targetScript"
}
