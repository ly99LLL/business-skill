# Business Skill - Windows Installation Script
# Run: .\install.ps1
# Or: powershell -ExecutionPolicy Bypass -File install.ps1
# Encoding: UTF-8 with BOM

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Business Skill v2.0 - Installer" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan

$GlobalSkillsDir = "$env:USERPROFILE\.claude\skills\business-skill"
$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "`nSource: $SourceDir" -ForegroundColor Gray
Write-Host "Target: $GlobalSkillsDir" -ForegroundColor Gray

# Check if Claude is installed
$ClaudeDir = "$env:USERPROFILE\.claude"
if (-not (Test-Path $ClaudeDir)) {
    Write-Host "`n[WARNING] Claude Code directory not found" -ForegroundColor Yellow
    Write-Host "  Please install Claude Code first: https://claude.ai/code" -ForegroundColor Yellow
    $continue = Read-Host "`nContinue anyway? (y/n)"
    if ($continue -ne 'y') { exit 0 }
}

# Create skills directory if needed
$SkillsDir = "$env:USERPROFILE\.claude\skills"
if (-not (Test-Path $SkillsDir)) {
    Write-Host "`nCreating skills directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
}

# Remove existing install
if (Test-Path $GlobalSkillsDir) {
    Write-Host "`nRemoving old version..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force $GlobalSkillsDir
}

# Copy skill files
Write-Host "`nCopying skill files..." -ForegroundColor Green
Copy-Item -Recurse -Force "$SourceDir\.claude\skills\business-skill" $GlobalSkillsDir

# Verify installation
if (Test-Path "$GlobalSkillsDir\SKILL.md") {
    Write-Host "`n[SUCCESS] Installation complete!" -ForegroundColor Green
    Write-Host "`nUsage:" -ForegroundColor Cyan
    Write-Host "  In Claude Code, type: /business-skill" -ForegroundColor White
    Write-Host "`nQuick test:" -ForegroundColor Cyan
    Write-Host "  /business-skill help me analyze: opening a mobile coffee bookshop in a park" -ForegroundColor White
    Write-Host "`nDocs:" -ForegroundColor Cyan
    Write-Host "  $SourceDir\README.md" -ForegroundColor White
} else {
    Write-Host "`n[ERROR] Installation failed. Check permissions." -ForegroundColor Red
    exit 1
}

Write-Host "`nEnjoy the power of business thinking!" -ForegroundColor Magenta
Write-Host "================================================`n" -ForegroundColor Cyan
