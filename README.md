# norman-audit

A CLI tool for design critique based on Don Norman's principles from *The Design of Everyday Things*. Runs against Claude Code CLI and auto-selects the right audit mode based on what you're analysing.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/amerlyn/norman-audit/main/install.sh | bash
```

Requires [Claude Code CLI](https://claude.ai/code). If you don't have it:

```bash
npm install -g @anthropic-ai/claude-code && claude login
```

---

## Usage

```bash
# Text description
norman-audit "icon-only bottom nav, 5 tabs, no labels"

# With a screenshot
norman-audit --image ./screen.png "audit this checkout flow"

# Piped input
echo "Settings panel with 40 unlabelled toggles" | norman-audit

# Custom skill path
NORMAN_SKILL_PATH=./SKILL.md norman-audit "audit this form"
```

---

## Audit Modes

The tool auto-detects which mode to run based on the artifact. No flags needed.

| Mode | Leads with | Best for |
|---|---|---|
| **Signifier Scan** | Signifiers | Isolated component — button, input, icon, card |
| **Affordance Check** | Affordances | Single screen or UI state |
| **Feedback Loop** | Feedback | Multi-step flow, interaction sequence |
| **Mapping Review** | Mapping | Layout, nav, dashboard, IA |
| **Constraint Audit** | Constraints | Forms, onboarding, decision points |
| **Conceptual Model** | Conceptual Model | Full feature or end-to-end journey |

Every audit runs all 7 Norman principles. The mode determines which one leads.

---

## Output

Each audit returns:

- **Per-principle findings** — what's working, what's broken, concrete recommendation
- **Priority Hits** — top 2–3 issues ranked 🔴 Critical / 🟡 Friction / 🟢 Polish
- **Dev / PM Notes** — only when there's something worth flagging cross-functionally

---

## Uninstall

```bash
rm ~/.local/bin/norman-audit
rm -rf ~/.claude/skills/norman-design-audit
```
