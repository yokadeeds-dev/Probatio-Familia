# Static check of the subagents (mimama, pf-real). ASCII only (PowerShell 5.1).
param([switch]$SkipDeployed, [string[]]$Agent = @('mimama', 'pf-real'))
$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
$fail = 0
function Bad($m) { Write-Output "FAIL: $m"; $script:fail++ }

$sections = @{
    'mimama'  = @('IDENTIT', 'SCHRITT 0 ', 'SCHRITT 0.5', 'EBENEN-MODELL', 'OPERATOREN', 'CROSS-FLOW', 'KRITERIEN', 'BETRIEBSMODI', 'OUTPUT-STRUKTUR', 'VERHALTENSREGELN', 'FALSIFIZIERBARKEIT')
    'pf-real' = @('IDENTIT', 'WORKFLOW', 'AUSGABEFORMAT', 'VERHALTENSREGELN', 'MODI', 'WISSENS-ANKER')
}

foreach ($a in $Agent) {
    Write-Output "== $a"
    $src = Join-Path $repo "$a\agent\$a.md"
    if (-not (Test-Path $src)) { Bad "$a missing: $src"; continue }
    $bytes = [System.IO.File]::ReadAllBytes($src)
    if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) { Bad "$a BOM found" }
    if ($bytes -contains 13) { Bad "$a CR found (LF only)" }

    $text = [System.Text.Encoding]::UTF8.GetString($bytes)
    if ($text -notmatch ('(?s)^---\r?\nname: ' + [regex]::Escape($a) + '\r?\ndescription: .+?\r?\ntools: .+?\r?\n---')) { Bad "$a frontmatter (name/description/tools)" }

    $m = [regex]::Match($text, 'Version (\d+\.\d+\.\d+)')
    if (-not $m.Success) { Bad "$a version missing" }
    else {
        $ver = $m.Groups[1].Value
        $cl = Get-Content (Join-Path $repo "$a\CHANGELOG.md") -Raw -Encoding UTF8
        if ($cl -notmatch [regex]::Escape("## $ver")) { Bad "$a CHANGELOG has no entry for $ver" }
        Write-Output "version: $ver"
    }

    foreach ($s in $sections[$a]) {
        if ($text -notmatch [regex]::Escape($s)) { Bad "$a section missing: $s" }
    }

    if (-not $SkipDeployed) {
        $dst = Join-Path $env:USERPROFILE ".claude\agents\$a.md"
        if (-not (Test-Path $dst)) { Write-Output 'note: not deployed' }
        elseif ((Get-FileHash $dst).Hash -ne (Get-FileHash $src).Hash) { Write-Output 'note: deployed copy differs; run deploy.ps1' }
        else { Write-Output 'deployed copy identical' }
    }
}

if ($fail -gt 0) { Write-Output "check failed: $fail"; exit 1 }
Write-Output 'check ok'
exit 0
