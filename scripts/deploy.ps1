# Deploys the subagents to the Claude agents folder. ASCII only (PowerShell 5.1).
# The repo files are canonical; deployed copies are never edited by hand.
param([string[]]$Agent = @('mimama', 'pf-real'))
$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
$dstDir = Join-Path $env:USERPROFILE '.claude\agents'

& (Join-Path $PSScriptRoot 'check.ps1') -SkipDeployed -Agent $Agent
if ($LASTEXITCODE -ne 0) { Write-Output 'check failed, not deploying'; exit 1 }

New-Item -ItemType Directory -Force $dstDir | Out-Null
foreach ($a in $Agent) {
    $src = Join-Path $repo "$a\agent\$a.md"
    $dst = Join-Path $dstDir "$a.md"
    if (Test-Path $dst) {
        if ((Get-FileHash $dst).Hash -eq (Get-FileHash $src).Hash) { Write-Output "already current: $dst"; continue }
        $backupDir = Join-Path $repo '.backup'
        New-Item -ItemType Directory -Force $backupDir | Out-Null
        $stamp = Get-Date -Format 'yyyy-MM-dd_HHmm'
        Copy-Item $dst (Join-Path $backupDir "$a.md.backup_$stamp")
    }
    Copy-Item $src $dst -Force
    if ((Get-FileHash $dst).Hash -ne (Get-FileHash $src).Hash) { Write-Output "hash mismatch after copy: $a"; exit 1 }
    Write-Output "deployed: $dst"
}
exit 0
