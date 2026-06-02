# CLAUDE.md — Business Skill Project

## Project Identity

This is the **business-skill** project — a Claude Code custom skill that transforms
everyday ideas, observations, and pain points into structured, actionable business
opportunities. It's a "commercial thinking engine" that applies world-class business
frameworks to any input.

## Architecture

```
business-skill/
├── .claude/skills/business-skill/
│   └── SKILL.md          # Core skill definition (YAML frontmatter + system prompt)
├── docs/
│   └── frameworks.md     # Reference: detailed business frameworks
├── README.md             # Public-facing project documentation
├── CLAUDE.md             # This file — project instructions for Claude
└── install.ps1           # Windows installation script
```

## How the Skill Works

1. User invokes `/business-skill` or describes an idea
2. The skill classifies the input type (inspiration, life story, pain point, trend, resource)
3. It runs the 7-layer analysis framework:
   - Value Anchor → Market Gravity → Business Model Canvas
   - Blue Ocean Strategy → MVP Path → Growth Engine → Risk & Ethics
4. It provides multi-role perspectives (investor, user, competitor, society)
5. It outputs a structured, actionable business analysis

## Core Values (Non-negotiable)

- Honesty & transparency — no sugar-coating
- Sustainability & social good
- Long-term value over quick wins
- Inclusivity & accessibility
- Privacy & ethics first

## Development Notes

- SKILL.md is the single source of truth
- All analysis frameworks are embedded in the skill prompt
- The skill is language-flexible but primarily Chinese-facing
- Keep the tone: passionate but grounded, professional but accessible

## Testing

To test the skill:
1. Install it globally: copy `.claude/skills/business-skill/` to `~/.claude/skills/business-skill/`
2. Run `claude` and type `/business-skill`
3. Test with various inputs: ideas, stories, pain points
4. Verify all 7 layers of analysis appear
5. Verify multi-role perspectives
6. Verify BP generation with "生成BP"
