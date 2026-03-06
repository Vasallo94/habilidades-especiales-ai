# vasallo94 Claude Skills

Una colección de skills y comandos personalizados para **Claude Code**.

Estas skills están diseñadas siguiendo estándares de la industria (DevSecOps, Clean Code, Enterprise Architecture) para potenciar a Claude y estandarizar repositorios.

## Instalación rápida (One-Liner)

Para instalar una skill, usa el siguiente comando y pasa el nombre de la skill al final:

```bash
curl -sL https://raw.githubusercontent.com/vasallo94/skills/main/install.sh | bash -s -- <nombre_de_la_skill>
```

Se descargarán automáticamente en tu carpeta global de Claude (`~/.claude/commands/`) para que estén disponibles en todos tus proyectos.

## Catálogo de Skills

| Skill | Descripción | Instalación |
|---|---|---|
| **[delafu-mode](./skills/delafu-mode/README.md)** | Bootstrap técnico Enterprise. Configura repositorios nuevos o desestructurados con estándares de seguridad, trazabilidad (Changelog, ADRs) y calidad de código. | `curl -sL https://raw.githubusercontent.com/vasallo94/skills/main/install.sh \| bash -s -- delafu-mode` |

> *Más skills portadas desde el vault de Obsidian próximamente.*

## Estructura del repositorio

- `/install.sh`: Script genérico de instalación.
- `/skills/`: Carpeta que contiene cada skill de forma individual y autocontenida.

## Contribución

Si creas nuevas skills útiles, ponlas en su propia carpeta bajo `/skills/` con su propio `README.md` (que explique qué hace y cómo se instala) y el archivo `SKILL.md`.
