#!/bin/bash
# Business Skill — Mac/Linux Installation Script
# Run: chmod +x install.sh && ./install.sh

set -e

echo "╔══════════════════════════════════════════════╗"
echo "║    🚀 Business Skill — 商业化思维引擎       ║"
echo "║       一键安装脚本 v1.0.0                    ║"
echo "╚══════════════════════════════════════════════╝"

GLOBAL_SKILLS_DIR="$HOME/.claude/skills/business-skill"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "📂 源目录: $SOURCE_DIR"
echo "📂 目标目录: $GLOBAL_SKILLS_DIR"

# Create skills directory
mkdir -p "$HOME/.claude/skills"

# Remove existing install
if [ -d "$GLOBAL_SKILLS_DIR" ]; then
    echo ""
    echo "🗑️  移除旧版本..."
    rm -rf "$GLOBAL_SKILLS_DIR"
fi

# Copy skill files
echo ""
echo "📋 复制 skill 文件..."
cp -r "$SOURCE_DIR/.claude/skills/business-skill" "$GLOBAL_SKILLS_DIR"

# Verify
if [ -f "$GLOBAL_SKILLS_DIR/SKILL.md" ]; then
    echo ""
    echo "✅ 安装成功！"
    echo ""
    echo "🎮 使用方法:"
    echo "   在 Claude Code 中输入: /business-skill"
    echo ""
    echo "💡 快速测试:"
    echo "   /business-skill 帮我分析：在公园里开一个移动咖啡书店"
else
    echo ""
    echo "❌ 安装失败"
    exit 1
fi

echo ""
echo "🎉 享受商业思维的乐趣吧！"
echo "═══════════════════════════════════════════════"
