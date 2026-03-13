#!/bin/bash
# install.sh - Instalador de skills para Claude Code
# Uso: curl -sL https://raw.githubusercontent.com/Vasallo94/habilidades-especiales-ai/main/install.sh | bash -s -- <skill_name>

set -e

REPO="Vasallo94/habilidades-especiales-ai"
BRANCH="main"
DEST="$HOME/.claude/skills"

echo "📂 Directorio destino: $DEST"

if [ $# -eq 0 ]; then
  echo "❌ Error: Debes especificar al menos una skill para instalar."
  echo ""
  echo "Uso:"
  echo "  curl -sL https://raw.githubusercontent.com/$REPO/$BRANCH/install.sh | bash -s -- <skill_name>"
  echo ""
  echo "Skills disponibles: delafu-mode, mcp-builder"
  exit 1
fi

for SKILL in "$@"; do
  echo "📦 Instalando skill '$SKILL'..."
  SKILL_DIR="$DEST/$SKILL"
  mkdir -p "$SKILL_DIR"
  URL="https://raw.githubusercontent.com/$REPO/$BRANCH/skills/$SKILL/SKILL.md"

  if curl -sLf "$URL" -o "$SKILL_DIR/SKILL.md"; then
    echo "✅ '$SKILL' instalada en $SKILL_DIR/SKILL.md"
  else
    echo "❌ Error: No se pudo encontrar la skill '$SKILL'."
    echo "   Verifica que el nombre es correcto y que existe en el repositorio."
    rmdir "$SKILL_DIR" 2>/dev/null || true
  fi
done

echo ""
echo "🎉 Instalación completada. Las skills están disponibles en todos tus proyectos de Claude Code."
