<#
.SYNOPSIS
  Launcher wrapper from the repository root for start-all.ps1 in attendande_system.
#>
param(
    [switch]$Lan = $true,
    [switch]$NoPortal,
    [switch]$NoStudentApp,
    [switch]$NoBackend
)

$targetScript = Join-Path $PSScriptRoot "attendande_system\start-all.ps1"
if (Test-Path $targetScript) {
    & $targetScript -Lan:$Lan -NoPortal:$NoPortal -NoStudentApp:$NoStudentApp -NoBackend:$NoBackend
} else {
    Write-Error "Could not find $targetScript"
}
