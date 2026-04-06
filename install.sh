#!/usr/bin/env bash
set -euo pipefail

REPO="https://raw.githubusercontent.com/amerlyn/norman-audit/main"
INSTALL_DIR="$HOME/.claude/skills/norman-design-audit"
BIN_DIR="$HOME/.local/bin"
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

echo ""
echo "  norman-audit — Norman Design Audit"
echo "  ────────────────────────────────────"
echo ""

# Check for Claude Code CLI
if ! command -v claude &>/dev/null; then
  echo "  ✗ Claude Code CLI not found."
  echo "    Install it first: npm install -g @anthropic-ai/claude-code"
  echo ""
  exit 1
fi

echo "  → Downloading skill files..."
mkdir -p "$TMP/references"
curl -fsSL "$REPO/SKILL.md"                              -o "$TMP/SKILL.md"
curl -fsSL "$REPO/references/norman-principles.md"       -o "$TMP/references/norman-principles.md"
curl -fsSL "$REPO/norman-audit.sh"                       -o "$TMP/norman-audit.sh"

echo "  → Installing skill..."
mkdir -p "$INSTALL_DIR/references"
cp "$TMP/SKILL.md"                        "$INSTALL_DIR/"
cp "$TMP/references/norman-principles.md" "$INSTALL_DIR/references/"

echo "  → Installing command..."
mkdir -p "$BIN_DIR"
cp "$TMP/norman-audit.sh" "$BIN_DIR/norman-audit"
chmod +x "$BIN_DIR/norman-audit"

# PATH check
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
  SHELL_RC="$HOME/.zshrc"
  [[ "${SHELL:-}" == */bash ]] && SHELL_RC="$HOME/.bashrc"
  echo "" >> "$SHELL_RC"
  echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> "$SHELL_RC"
  echo "  → Added ~/.local/bin to PATH in $(basename $SHELL_RC)"
  echo "    Run: source $SHELL_RC"
fi

echo ""
echo "  ✓ Installed. Try it:"
echo ""
echo "    norman-audit \"icon-only bottom nav, 5 tabs, no labels\""
echo ""
