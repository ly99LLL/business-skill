# CLAUDE.md — Business Skill v2.0 Project

## Project Identity

This is the **business-skill** project — a Claude Code custom skill that transforms
everyday ideas, observations, and pain points into structured, actionable business
opportunities. It's a "commercial thinking engine" that applies world-class business
frameworks to any input.

**Version**: 2.0.0
**Author**: ly99LLL
**License**: MIT

## Architecture

```
business-skill/
├── .claude/skills/business-skill/
│   └── SKILL.md                    # Core skill definition (YAML frontmatter + system prompt)
├── docs/
│   ├── frameworks.md               # Detailed business frameworks reference (12 layers)
│   ├── industry-templates.md       # 10 industry-specific analysis templates
│   └── pitch-framework.md          # Storytelling & pitch framework
├── README.md                       # Public-facing project documentation
├── CLAUDE.md                       # This file — project instructions for Claude
├── install.ps1                     # Windows installation script (PowerShell)
└── install.sh                      # Mac/Linux installation script (Bash)
```

## How the Skill Works (v2.0)

1. User invokes `/business-skill` or describes an idea
2. The skill classifies the input into one of 7 types:
   - 💡 Inspiration / 😄 Life Story / 😤 Pain Point / 🔭 Trend / 🎒 Resource / 🌍 Social Issue / ⚙️ Tech Application
3. It runs the **12-layer analysis framework**:
   1. Value Anchor — JTBD, Pain Scale, 5 Whys
   2. User Psychology — Cognitive Biases, Decision Journey, Habit Loop
   3. Market Gravity — TAM/SAM/SOM, Market Stage, Wave vs Fad
   4. Business Model Canvas — 9 elements
   5. Pricing & Finance — Unit Economics, 3-year snapshot, Break-even
   6. Blue Ocean Strategy — ERR Framework, Value Curve
   7. Competition & Moat — Porter's Five Forces, Moat Assessment
   8. MVP Path — 30/60/90 Day Roadmap
   9. Growth Engine — North Star Metric, AARRR
   10. Risk & Resilience — Risk Matrix, Antifragility
   11. Social Impact — SDG Alignment, B Corp Thinking
   12. Story & Narrative — Elevator Pitch × 3, Emotional Hook
4. It provides **6-role perspectives**:
   - 💰 Investor / 👤 User / ⚔️ Competitor / 🌍 Society / 🧠 Behavioral Scientist / 🔮 Futurist
5. It outputs a structured, actionable business analysis with specific next steps

## Core Values (Non-negotiable, 10 Principles)

1. Honesty & transparency — no sugar-coating, show the bad with the good
2. Sustainability & environmental responsibility
3. Inclusivity & diversity — consider all populations
4. Legal compliance — no gray zones
5. User value first — no exploiting information asymmetry
6. Long-term thinking — build lasting value, not quick cash grabs
7. Privacy as a right — data monetization must include privacy protection
8. Fair competition — no monopolistic or predatory practices
9. Anti-addiction design — don't exploit human psychological weaknesses
10. Intergenerational equity — consider impact on future generations

## Development Notes

- **SKILL.md** is the single source of truth — all changes start there
- The 12-layer framework is exhaustive but modular — not every layer needs equal depth
- Industry templates (docs/industry-templates.md) provide sector-specific lenses
- Pitch framework (docs/pitch-framework.md) ensures output is communicable
- Tone: passionate but grounded, professional but accessible, Chinese-primary with English key terms
- All monetary estimates should use ¥ (CNY) as default, with USD equivalents for large markets

## Testing Checklist

To verify the skill works end-to-end:

- [ ] Install globally: copy `.claude/skills/business-skill/` to `~/.claude/skills/business-skill/`
- [ ] Run `claude` and type `/business-skill`
- [ ] Test with: inspiration, life story, pain point, trend, resource, social issue, tech application (7 types)
- [ ] Verify all 12 layers appear in analysis
- [ ] Verify 6 role perspectives with independent ratings
- [ ] Verify "明天就能做的3件事" are specific and actionable
- [ ] Test BP generation with "生成BP"
- [ ] Test idea generation with "给我一个灵感"
- [ ] Test personal monetization with skill/resource sharing
- [ ] Test industry template switching (e.g., a food idea should trigger 餐饮 template)
- [ ] Verify value principles are upheld (no gray-zone recommendations)
- [ ] Verify cross-domain connections spark creative ideas
- [ ] Check elevator pitches are generated (3 versions)

## Key Metrics for Success

A great business-skill output should make the user feel:
1. **Seen** — "Yes, that's exactly the problem I was thinking about!"
2. **Informed** — "I now understand this market much better."
3. **Empowered** — "I know exactly what to do tomorrow."
4. **Challenged** — "I hadn't thought about it from that angle."
5. **Inspired** — "This could actually become something meaningful."
