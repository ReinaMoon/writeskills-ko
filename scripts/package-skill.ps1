# Package one skill folder as a Claude-uploadable zip on Windows.
# Copies linked 00-core files into references/core/ and rewrites paths.
#
# Usage (repo root, PowerShell):
#   .\scripts\package-skill.ps1 .\skills\03-novel\novel-planning
# Output:
#   dist\<skill-name>.zip   (paths start with <skill-name>/SKILL.md)

param(
  [Parameter(Mandatory = $true, Position = 0)]
  [string]$SkillDir
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
if (-not [System.IO.Path]::IsPathRooted($SkillDir)) {
  $SkillDir = Join-Path $Root $SkillDir
}
$SkillDir = (Resolve-Path $SkillDir).Path
$SkillFile = Join-Path $SkillDir "SKILL.md"
if (-not (Test-Path -LiteralPath $SkillFile)) {
  throw "No SKILL.md in $SkillDir"
}

$Name = Split-Path -Leaf $SkillDir
$StagingParent = Join-Path $Root "dist\.staging"
$Staging = Join-Path $StagingParent $Name
$OutDir = Join-Path $Root "dist"
$ZipPath = Join-Path $OutDir "$Name.zip"

if (Test-Path -LiteralPath $Staging) { Remove-Item -LiteralPath $Staging -Recurse -Force }
New-Item -ItemType Directory -Force -Path $Staging | Out-Null
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
Copy-Item -Path (Join-Path $SkillDir '*') -Destination $Staging -Recurse -Force

$CoreRoot = Join-Path $Root "skills\00-core"
$utf8 = New-Object System.Text.UTF8Encoding $false
$stagedSkill = Join-Path $Staging "SKILL.md"
$text = [System.IO.File]::ReadAllText($stagedSkill, $utf8)
$coreRefs = [regex]::Matches($text, '\.\./\.\./00-core/([\w./\-]+\.md)')
$seen = @{}
foreach ($m in $coreRefs) {
  $rel = $m.Groups[1].Value
  if ($seen.ContainsKey($rel)) { continue }
  $seen[$rel] = $true
  $src = Join-Path $CoreRoot ($rel -replace '/', '\')
  $dst = Join-Path $Staging ("references\core\" + ($rel -replace '/', '\'))
  if (-not (Test-Path -LiteralPath $src)) {
    Write-Warning "missing core file $rel"
    continue
  }
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $dst) | Out-Null
  Copy-Item -LiteralPath $src -Destination $dst -Force
  Write-Output "vendored $rel"
}
$rewritten = $text.Replace("../../00-core/", "references/core/")
if ($rewritten -ne $text) {
  [System.IO.File]::WriteAllText($stagedSkill, $rewritten, $utf8)
  Write-Output "rewrote SKILL.md core paths"
}

if (Test-Path -LiteralPath $ZipPath) { Remove-Item -LiteralPath $ZipPath -Force }
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::Open($ZipPath, [System.IO.Compression.ZipArchiveMode]::Create)
try {
  Get-ChildItem -LiteralPath $Staging -Recurse -File | ForEach-Object {
    $rel = $_.FullName.Substring($StagingParent.Length).TrimStart('\', '/')
    $entryName = ($rel -replace '\\', '/')
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
      $zip, $_.FullName, $entryName, [System.IO.Compression.CompressionLevel]::Optimal
    ) | Out-Null
  }
} finally {
  $zip.Dispose()
}

Write-Output "Wrote $ZipPath"
# First entries should be <name>/SKILL.md
Add-Type -AssemblyName System.IO.Compression.FileSystem
$check = [System.IO.Compression.ZipFile]::OpenRead($ZipPath)
try {
  $check.Entries | Select-Object -First 8 | ForEach-Object { Write-Output $_.FullName }
  $ok = $check.Entries | Where-Object { $_.FullName -eq "$Name/SKILL.md" }
  if (-not $ok) { throw "ZIP missing $Name/SKILL.md" }
} finally {
  $check.Dispose()
}
