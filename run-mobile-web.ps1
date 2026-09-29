<#
.SYNOPSIS
  Launcher wrapper from repository root for run-mobile-web.ps1 in attendande_system.
#>
param(
    [int]$ApiPort = 8000,
    [int]$WebPort = 5174
)

$targetScript = Join-Path $PSScriptRoot "attendande_system\run-mobile-web.ps1"
if (Test-Path $targetScript) {
    & $targetScript -ApiPort $ApiPort -WebPort $WebPort
} else {
    Write-Error "Could not find $targetScript"
}
