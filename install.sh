#!/bin/bash
# install.sh - Instalador genérico para vasallo94 skills
# Uso: curl -sL https://raw.githubusercontent.com/vasallo94/skills/main/install.sh | bash -s -- <skill_name>

set -e

REPO="Vasallo94/vasallo94-skills"
BRANCH="main"

# Detectar Sistema Operativo para la ruta correcta
OS="$(uname -s)"
case "${OS}" in
    Linux*|Darwin*)
        DEST="$HOME/.claude/commands"
        ;;
    CYGWIN*|MINGW*|MSYS*)
        # En Git Bash / CMD de Windows
        DEST="$HOME/.claude/commands"
        ;;
    *)
        DEST="$HOME/.claude/commands"
        ;;
esac

echo "🖥️  Sistema detectado: $OS"
echo "📂 Directorio destino: $DEST"

if [ $# -eq 0 ]; then
  echo "❌ Error: Debes especificar al menos una skill para instalar."
  echo "Uso: curl -sL https://raw.githubusercontent.com/$REPO/$BRANCH/install.sh | bash -s -- <skill_name>"
  exit 1
fi

mkdir -p "$DEST"

for SKILL in "$@"; do
  echo "📦 Instalando $SKILL..."
  URL="https://raw.githubusercontent.com/$REPO/$BRANCH/skills/$SKILL/SKILL.md"
  
  # Usar curl para descargar el archivo, fallando si recibe 404
  if curl -sLf "$URL" -o "$DEST/$SKILL.md"; then
    echo "✅ Skill '$SKILL' instalada exitosamente en $DEST/$SKILL.md"
  else
    echo "❌ Error: No se pudo encontrar la skill '$SKILL'."
    echo "Verifica que el nombre es correcto y que existe en el repositorio."
  fi
done

echo ""
echo "🎉 Instalación completada. Puedes verificar tus skills con 'claude agents'."
