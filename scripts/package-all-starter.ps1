# Package starter packs A/B/C/F/L/M on Windows.
# Usage (repo root):
#   .\scripts\package-all-starter.ps1

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Packer = Join-Path $PSScriptRoot "package-skill.ps1"

$Packs = @{
  A = @(
    "skills\08-it-docs\doc-meeting",
    "skills\08-it-docs\doc-1on1",
    "skills\08-it-docs\doc-weekly"
  )
  B = @(
    "skills\08-it-docs\doc-project-book",
    "skills\08-it-docs\doc-runbook",
    "skills\08-it-docs\doc-confluence",
    "skills\08-it-docs\doc-adr",
    "skills\08-it-docs\doc-postmortem",
    "skills\08-it-docs\doc-pr"
  )
  C = @(
    "skills\01-writing\write-blog"
  )
  F = @(
    "skills\03-novel\novel-planning",
    "skills\03-novel\novel-voice",
    "skills\03-novel\novel-writing",
    "skills\03-novel\novel-continuity",
    "skills\02-book\book-editing"
  )
  L = @(
    "skills\11-career\career-resume",
    "skills\11-career\career-cover-letter",
    "skills\11-career\career-interview"
  )
  M = @(
    "skills\10-edit\edit-de-ai",
    "skills\10-edit\edit-proofread"
  )
}

New-Item -ItemType Directory -Force -Path (Join-Path $Root "dist") | Out-Null
foreach ($key in @("A", "B", "C", "F", "L", "M")) {
  $manifest = Join-Path $Root "dist\starter-$key.manifest.txt"
  Set-Content -LiteralPath $manifest -Value @() -Encoding utf8
  foreach ($rel in $Packs[$key]) {
    & $Packer (Join-Path $Root $rel)
    $name = Split-Path -Leaf $rel
    Add-Content -LiteralPath $manifest -Value "$name.zip" -Encoding utf8
  }
  Write-Output "Wrote $manifest"
}
Write-Output "Done. Upload each zip in dist\. Pack F is the novel set."
