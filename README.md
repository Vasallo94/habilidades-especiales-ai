# 🧠 Habilidades Especiales AI

Una colección en constante evolución de skills, prompts y flujos de trabajo avanzados diseñados para potenciar asistentes de Inteligencia Artificial como **Claude Code**, **Cursor** y agentes autónomos.

Estas habilidades están construidas siguiendo las mejores prácticas de la industria (DevSecOps, Clean Code, Enterprise Architecture) para dotar a la IA de capacidades estándar, repetibles y de calidad profesional.

## Instalación rápida (One-Liner)

Para instalar una skill, usa el siguiente comando y pasa el nombre de la skill al final:

```bash
curl -sL https://raw.githubusercontent.com/Vasallo94/habilidades-especiales-ai/main/install.sh | bash -s -- <nombre_de_la_skill>
```

Se descargarán automáticamente en tu carpeta global de Claude (`~/.claude/skills/`) para que estén disponibles en todos tus proyectos.

## Catálogo de Skills

| Skill | Descripción | Instalación |
|---|---|---|
| **[delafu-mode](./skills/delafu-mode/README.md)** | Bootstrap Enterprise: analiza repositorios sin reglas y aplica gobierno técnico (seguridad, trazabilidad, calidad, Conventional Commits, ADRs). | `curl -sL https://raw.githubusercontent.com/Vasallo94/habilidades-especiales-ai/main/install.sh \| bash -s -- delafu-mode` |
| **[mcp-builder](./skills/mcp-builder/README.md)** | Guía comprensiva y metodologías (4 Fases) para el desarrollo, revisión y evaluación de servidores de calidad para el Model Context Protocol (MCP). | `curl -sL https://raw.githubusercontent.com/Vasallo94/habilidades-especiales-ai/main/install.sh \| bash -s -- mcp-builder` |

### 🔄 Actualización
Para mantener una skill actualizada con las últimas mejoras, simplemente **vuelve a ejecutar su comando de instalación**. El script descargará la versión más reciente de la rama `main` y sobrescribirá tu copia local.

## Estructura del repositorio

- `/install.sh`: Script genérico de instalación.
- `/skills/`: Carpeta que contiene cada skill de forma individual y autocontenida.
  - Cada skill tiene su propio `README.md` (documentación) y `SKILL.md` (contenido de la skill).

## Contribución

Si creas nuevas skills útiles, ponlas en su propia carpeta bajo `/skills/` con su propio `README.md` (que explique qué hace y cómo se instala) y el archivo `SKILL.md`.
