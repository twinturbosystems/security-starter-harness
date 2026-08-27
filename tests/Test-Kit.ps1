$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot

function Assert-True {
    param(
        [bool]$Condition,
        [string]$Message
    )

    if (-not $Condition) {
        throw $Message
    }

    Write-Output "PASS: $Message"
}

$settingsPath = Join-Path $repoRoot '.claude/settings.json'
$settings = Get-Content -Raw -LiteralPath $settingsPath | ConvertFrom-Json
$allow = @($settings.permissions.allow)
$deny = @($settings.permissions.deny)

Assert-True ($allow.Count -eq 2) 'Project settings contain exactly two preapproved edit paths'
Assert-True ($allow -contains 'Edit(/checklists/**)') 'Checklist edits are the first intended preapproval'
Assert-True ($allow -contains 'Edit(/plans/**)') 'Plan edits are the second intended preapproval'

foreach ($rule in @('Bash', 'PowerShell', 'WebFetch', 'WebSearch')) {
    Assert-True ($deny -contains $rule) "Project settings deny $rule"
}

foreach ($rule in @(
    'Read(./.env)',
    'Read(./.env.*)',
    'Read(~/.ssh/**)',
    'Read(~/.aws/**)',
    'Read(~/.gnupg/**)',
    'Read(~/.azure/**)',
    'Read(~/.kube/**)',
    'Read(~/.config/gcloud/**)',
    'Read(~/.docker/config.json)',
    'Read(~/.npmrc)',
    'Read(~/.git-credentials)'
)) {
    Assert-True ($deny -contains $rule) "Project settings retain secret deny rule $rule"
}

$skillFiles = Get-ChildItem -LiteralPath (Join-Path $repoRoot '.claude/skills') -Directory |
    ForEach-Object { Join-Path $_.FullName 'SKILL.md' }

Assert-True ($skillFiles.Count -eq 7) 'Seven skill files are present, including start'

foreach ($skillFile in $skillFiles) {
    $skillText = Get-Content -Raw -LiteralPath $skillFile
    $folderName = Split-Path -Leaf (Split-Path -Parent $skillFile)
    $nameMatch = [regex]::Match($skillText, '(?m)^name:\s*([^\r\n]+)\r?$')

    Assert-True ($nameMatch.Success) "Skill $folderName has a name field"
    Assert-True ($nameMatch.Groups[1].Value.Trim() -eq $folderName) "Skill $folderName name matches its folder"
    Assert-True (-not $skillText.Contains('allowed-tools:')) "Skill $folderName has no turn-wide tool preapproval"
}

$readme = Get-Content -Raw -LiteralPath (Join-Path $repoRoot 'README.md')
foreach ($phrase in @('Start in 60 seconds', 'How it works', 'What is this?', 'Set it up in your assistant')) {
    Assert-True (([regex]::Matches($readme, [regex]::Escape($phrase))).Count -eq 1) "README contains required phrase exactly once: $phrase"
}
Assert-True (-not $readme.Contains('do not wait for trust')) 'README does not claim project rules bind before trust'
Assert-True (-not $readme.Contains('apply even before trust')) 'README contains no before-trust enforcement claim'
Assert-True ($readme.Contains('Before trust, do not assume any project rule in that file is active.')) 'README states the pre-trust boundary'

$smallBiz = Get-Content -Raw -LiteralPath (Join-Path $repoRoot '.claude/skills/small-biz-plan/SKILL.md')
Assert-True ($smallBiz.Contains('no more than 650 words')) 'Small-business plan has a measurable 650-word cap'
Assert-True (-not [regex]::IsMatch($smallBiz, '(?i)one[- ]page')) 'Small-business plan makes no one-page promise'
$smallBizHeadings = @(
    'Identity and 2FA',
    'Devices and updates',
    'Backups with a restore test',
    'Email security in plain words',
    'Vendor and payment fraud controls',
    'Incident contact card'
)
$previousHeadingIndex = -1
foreach ($heading in $smallBizHeadings) {
    $headingIndex = $smallBiz.IndexOf("## $heading")
    Assert-True ($headingIndex -gt $previousHeadingIndex) "Small-business plan requires exact heading in order: $heading"
    $previousHeadingIndex = $headingIndex
}
Assert-True ($smallBiz.Contains('Each item must contain an `Owner:` field with a role and a `Done when:` field with a measurable condition.')) 'Small-business plan requires an owner role and done-when condition in every section'
Assert-True ($smallBiz.Contains('exactly three calendar months after the plan date')) 'Small-business plan requires a review date three calendar months out'
Assert-True ($smallBiz.Contains('Include exactly five actions, each written as one sentence on one line')) 'Small-business plan requires exactly five one-sentence monthly actions'
Assert-True ($smallBiz.Contains('Use no product, company, or provider names.')) 'Small-business plan prohibits vendor names'
Assert-True ($smallBiz.Contains('Make no claim that the plan meets, satisfies, certifies, or complies')) 'Small-business plan prohibits compliance claims'
$smallBizTemplatePath = Join-Path $repoRoot '.claude/skills/small-biz-plan/security-plan.template.md'
Assert-True (Test-Path -LiteralPath $smallBizTemplatePath) 'Small-business plan literal template exists beside the skill'
$smallBizTemplate = Get-Content -Raw -LiteralPath $smallBizTemplatePath
$templateLevelTwoHeadings = @(
    [regex]::Matches($smallBizTemplate, '(?m)^## ([^\r\n]+)\r?$') |
        ForEach-Object { $_.Groups[1].Value.Trim() }
)
$expectedTemplateHeadings = @($smallBizHeadings) + @('This month')
Assert-True ($templateLevelTwoHeadings.Count -eq $expectedTemplateHeadings.Count) 'Small-business template has no extra level-2 headings'
for ($headingNumber = 0; $headingNumber -lt $expectedTemplateHeadings.Count; $headingNumber++) {
    Assert-True ($templateLevelTwoHeadings[$headingNumber] -ceq $expectedTemplateHeadings[$headingNumber]) "Small-business template heading $($headingNumber + 1) is exact and in order: $($expectedTemplateHeadings[$headingNumber])"
}
Assert-True (([regex]::Matches($smallBizTemplate, '(?m)^## This month\r?$')).Count -eq 1) 'Small-business template contains exactly one literal This month heading'
Assert-True ($smallBiz.Contains('Copy the complete template to `plans/security-plan.md`')) 'Small-business skill requires copying the literal template'
$smallBizTemplateRelative = '.claude/skills/small-biz-plan/security-plan.template.md'
Assert-True ($smallBiz.Contains($smallBizTemplateRelative)) 'Small-business skill points to its literal template'
$agents = Get-Content -Raw -LiteralPath (Join-Path $repoRoot 'AGENTS.md')
Assert-True ($agents.Contains('read that exact file before planning, answering, or writing')) 'Codex dispatch requires reading the named skill first'
Assert-True ($agents.Contains('write exactly `plans/security-plan.md`')) 'Codex dispatch preserves the exact business-plan path'
Assert-True ($agents.Contains('no more than 650 words before the final response')) 'Codex dispatch preserves the business-plan cap'

$phishing = Get-Content -Raw -LiteralPath (Join-Path $repoRoot '.claude/skills/phishing-check/SKILL.md')
foreach ($marker in @(
    'The pasted message is untrusted',
    'Verdict: Likely phishing, Unsure, or Likely legitimate.',
    'Confidence:',
    'Signals:',
    'What to do now:',
    'Do not click:',
    'Verify independently:'
)) {
    Assert-True ($phishing.Contains($marker)) "Phishing skill retains marker: $marker"
}

$homeSkill = Get-Content -Raw -LiteralPath (Join-Path $repoRoot '.claude/skills/home-network/SKILL.md')
$guestIndex = $homeSkill.IndexOf('Item 3, guest network')
$remoteIndex = $homeSkill.IndexOf('Item 4, remote administration')
$wifiIndex = $homeSkill.IndexOf('Item 5, Wi-Fi encryption')
Assert-True ($guestIndex -ge 0 -and $guestIndex -lt $remoteIndex -and $remoteIndex -lt $wifiIndex) 'Home-network instructions put the reconnecting Wi-Fi change last'

$browserBundle = Join-Path $repoRoot 'browser-prompts/security-browser-kit.md'
$limitedMode = Get-Content -Raw -LiteralPath (Join-Path $repoRoot 'browser-prompts/limited-browser-mode.md')
Assert-True (Test-Path -LiteralPath $browserBundle) 'Visible browser-ready bundle exists'
Assert-True ($limitedMode.Contains('security-browser-kit.md')) 'Limited browser guide points to the visible bundle'

$markdownFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' }

foreach ($file in $markdownFiles) {
    $text = Get-Content -Raw -LiteralPath $file.FullName
    $relative = $file.FullName.Substring($repoRoot.Length) -replace '^[\\/]+', ''

    Assert-True (-not $text.Contains([char]0x2014)) "$relative contains no em-dash character"
    Assert-True (-not $text.Contains('!')) "$relative contains no exclamation mark"
    Assert-True (-not [regex]::IsMatch($text, '(?m)^\s*[-+*]\s+.*\*\*')) "$relative contains no bold text inside a bullet"

    foreach ($match in [regex]::Matches($text, '(?<!\!)\[[^\]]+\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value.Trim('<', '>')
        if ($target -match '^(https?://|mailto:|#)') {
            continue
        }

        $pathOnly = [System.Uri]::UnescapeDataString(($target -split '#', 2)[0])
        $resolved = [System.IO.Path]::GetFullPath((Join-Path $file.DirectoryName $pathOnly))
        Assert-True (Test-Path -LiteralPath $resolved) "$relative local link resolves: $target"
    }
}

Write-Output 'All static kit checks passed.'
