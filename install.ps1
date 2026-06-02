# Business Skill — Windows Installation Script
# Run: .\install.ps1
# Or: powershell -ExecutionPolicy Bypass -File install.ps1

Write-Host @"
╔══════════════════════════════════════════════╗
║    🚀 Business Skill — 商业化思维引擎       ║
║       一键安装脚本 v1.0.0                    ║
╚══════════════════════════════════════════════╝
"@ -ForegroundColor Cyan

$GlobalSkillsDir = "$env:USERPROFILE\.claude\skills\business-skill"
$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "`n📂 源目录: $SourceDir" -ForegroundColor Gray
Write-Host "📂 目标目录: $GlobalSkillsDir" -ForegroundColor Gray

# Check if Claude is installed
$ClaudeDir = "$env:USERPROFILE\.claude"
if (-not (Test-Path $ClaudeDir)) {
    Write-Host "`n⚠️  未检测到 Claude Code 安装目录" -ForegroundColor Yellow
    Write-Host "   请确保已安装 Claude Code 后再运行此脚本" -ForegroundColor Yellow
    Write-Host "   下载地址: https://claude.ai/code" -ForegroundColor Yellow
    $continue = Read-Host "`n是否继续安装？(y/n)"
    if ($continue -ne 'y') { exit 0 }
}

# Create skills directory if it doesn't exist
$SkillsDir = "$env:USERPROFILE\.claude\skills"
if (-not (Test-Path $SkillsDir)) {
    Write-Host "`n📁 创建 skills 目录..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
}

# Remove existing install if present
if (Test-Path $GlobalSkillsDir) {
    Write-Host "`n🗑️  移除旧版本..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force $GlobalSkillsDir
}

# Copy skill files
Write-Host "`n📋 复制 skill 文件..." -ForegroundColor Green
Copy-Item -Recurse -Force "$SourceDir\.claude\skills\business-skill" $GlobalSkillsDir

# Verify installation
if (Test-Path "$GlobalSkillsDir\SKILL.md") {
    Write-Host "`n✅ 安装成功！" -ForegroundColor Green
    Write-Host "`n🎮 使用方法:" -ForegroundColor Cyan
    Write-Host "   在 Claude Code 中输入: /business-skill" -ForegroundColor White
    Write-Host "`n💡 快速测试:" -ForegroundColor Cyan
    Write-Host "   /business-skill 帮我分析：在公园里开一个移动咖啡书店" -ForegroundColor White
    Write-Host "`n📚 更多用法请查看:" -ForegroundColor Cyan
    Write-Host "   $GlobalSkillsDir\..\..\..\Desktop\business-skill\README.md" -ForegroundColor White
} else {
    Write-Host "`n❌ 安装失败，请检查权限" -ForegroundColor Red
    exit 1
}

Write-Host "`n🎉 享受商业思维的乐趣吧！" -ForegroundColor Magenta
Write-Host "═══════════════════════════════════════════════`n" -ForegroundColor Cyan
