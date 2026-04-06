#!/usr/bin/env bash
# ─────────────────────────────────────────────
#  norman-audit — Norman Design Audit via Claude CLI
#  Requires: Claude Code CLI (claude)
#
#  Usage:
#    norman-audit "icon-only bottom nav with 5 items"
#    norman-audit --image ./screen.png "audit this screen"
#    echo "describe your flow here" | norman-audit
# ─────────────────────────────────────────────

set -euo pipefail

SKILL_PATH="${NORMAN_SKILL_PATH:-$HOME/.claude/skills/norman-design-audit/SKILL.md}"

if [[ ! -f "$SKILL_PATH" ]]; then
  echo "❌ Skill not found at: $SKILL_PATH"
  echo "   Set NORMAN_SKILL_PATH env var or install the skill to ~/.claude/skills/"
  exit 1
fi

SKILL_CONTENT="$(cat "$SKILL_PATH")"

SYSTEM_PROMPT="You are a senior product design critic. Apply the following Norman Design Audit skill framework exactly as specified — including auto-detecting the correct audit mode, running all 7 principles, and outputting in the structured format defined in the skill.

$SKILL_CONTENT"

# Handle piped input
if [[ ! -t 0 ]]; then
  PIPED="$(cat)"
  claude -p "$SYSTEM_PROMPT" "$PIPED $*"
else
  claude -p "$SYSTEM_PROMPT" "$*"
fi
