$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoRoot

function Rename-TemplateFile {
    param(
        [string]$OldName,
        [string]$NewName
    )

    $oldPath = Join-Path $repoRoot "templates/$OldName"
    $newPath = Join-Path $repoRoot "templates/$NewName"

    if (Test-Path $oldPath) {
        if (-not (Test-Path (Split-Path -Parent $newPath))) {
            New-Item -ItemType Directory -Path (Split-Path -Parent $newPath) | Out-Null
        }
        Rename-Item -Path $oldPath -NewName $NewName
    }
}

function Update-Heading {
    param(
        [string]$Path,
        [string]$OldHeading,
        [string]$NewHeading
    )

    if (-not (Test-Path $Path)) {
        return
    }

    $content = Get-Content -Path $Path -Raw
    if ($content -match [regex]::Escape($OldHeading)) {
        $content = $content -replace [regex]::Escape($OldHeading), $NewHeading
        Set-Content -Path $Path -Value $content -NoNewline
    }
}

function Update-ReadmeReference {
    param(
        [string]$Path,
        [string]$OldReference,
        [string]$NewReference
    )

    if (-not (Test-Path $Path)) {
        return
    }

    $content = Get-Content -Path $Path -Raw
    if ($content -match [regex]::Escape($OldReference)) {
        $content = $content -replace [regex]::Escape($OldReference), $NewReference
        Set-Content -Path $Path -Value $content -NoNewline
    }
}

Rename-TemplateFile -OldName 'BELIEF_REGIME.md' -NewName 'BELIEF_REGIME_HIPF_TEMPLATE.md'
Rename-TemplateFile -OldName 'CORPUS_DOCUMENT.md' -NewName 'CORPUS_DOCUMENT_HIPF_TEMPLATE.md'
Rename-TemplateFile -OldName 'CULTURE.md' -NewName 'CULTURE_HIPF_TEMPLATE.md'
Rename-TemplateFile -OldName 'CULTURE_DOCUMENT.md' -NewName 'CULTURE_DOCUMENT_HIPF_TEMPLATE.md'
Rename-TemplateFile -OldName 'PERIODIZATION_ENTRY.md' -NewName 'PERIODIZATION_ENTRY_HIPF_TEMPLATE.md'
Rename-TemplateFile -OldName 'TIMELINE_ENTRY.md' -NewName 'TIMELINE_ENTRY_HIPF_TEMPLATE.md'

Update-Heading -Path 'templates/BELIEF_REGIME_HIPF_TEMPLATE.md' -OldHeading '# Belief Regime: <Provisional Name>' -NewHeading '# Template: Belief Regime (<Provisional Name>)'
Update-Heading -Path 'templates/CORPUS_DOCUMENT_HIPF_TEMPLATE.md' -OldHeading '# <Title>' -NewHeading '# Template: Corpus Document (<Title>)'
Update-Heading -Path 'templates/CULTURE_HIPF_TEMPLATE.md' -OldHeading '# <World constraint: Name>' -NewHeading '# Template: World Constraint (<World constraint: Name>)'
Update-Heading -Path 'templates/CULTURE_DOCUMENT_HIPF_TEMPLATE.md' -OldHeading '# <Constraint reference title>' -NewHeading '# Template: World Constraint Reference (<Constraint reference title>)'
Update-Heading -Path 'templates/PERIODIZATION_ENTRY_HIPF_TEMPLATE.md' -OldHeading '# Periodization Scheme: <Name>' -NewHeading '# Template: Periodization Scheme (<Name>)'
Update-Heading -Path 'templates/TIMELINE_ENTRY_HIPF_TEMPLATE.md' -OldHeading '# <Entry title>' -NewHeading '# Template: Timeline Entry (<Entry title>)'

Update-ReadmeReference -Path 'beliefs/regimes/README.md' -OldReference 'templates/BELIEF_REGIME.md' -NewReference 'templates/BELIEF_REGIME_HIPF_TEMPLATE.md'
Update-ReadmeReference -Path 'corpus/README.md' -OldReference 'templates/CORPUS_DOCUMENT.md' -NewReference 'templates/CORPUS_DOCUMENT_HIPF_TEMPLATE.md'

$rootReadmePath = Join-Path $repoRoot 'README.md'
if (Test-Path $rootReadmePath) {
    $rootReadme = Get-Content -Path $rootReadmePath -Raw
    if ($rootReadme -notmatch [regex]::Escape('### `world/`')) {
        $worldMapping = @'
### `world/`
Mapping layer for the HIPF `world/` implementation directory. In this repository, it points to
`world_constraints/` as the active implementation.

'@
        $rootReadme = $rootReadme -replace [regex]::Escape("### `world_constraints/`
Non-diegetic, world-instance constraints (species baselines, social norms, institutional affordances).
These are **instantiations** used by Yneva; they do not define new global theory.
"), "### `world_constraints/`
Non-diegetic, world-instance constraints (species baselines, social norms, institutional affordances).
These are **instantiations** used by Yneva; they do not define new global theory.

$worldMapping"
    }

    if ($rootReadme -match [regex]::Escape('Templates are provided under `templates/`.')) {
        $rootReadme = $rootReadme -replace [regex]::Escape('Templates are provided under `templates/`.'), 'Templates are provided under `templates/` (HIPF template filenames end in `_HIPF_TEMPLATE.md`).'
    }

    Set-Content -Path $rootReadmePath -Value $rootReadme -NoNewline
}

$worldReadmePath = Join-Path $repoRoot 'world/README.md'
if (-not (Test-Path $worldReadmePath)) {
    New-Item -ItemType Directory -Path (Split-Path -Parent $worldReadmePath) | Out-Null
    @'
# HIPF World Mapping

HIPF defines a `world/` implementation layer. For Yneva, that layer is implemented in
`world_constraints/`.

Use `world_constraints/` for all world-instance constraints and keep this directory as a
mapping reference.
'@ | Set-Content -Path $worldReadmePath -NoNewline
}