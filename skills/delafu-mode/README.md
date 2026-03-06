# delafu-mode

Skill de Bootstrap Enterprise para **Claude Code**. Actúa como un Arquitecto de Software DevSecOps que aplica estándares de la industria en repositorios sin reglas.

## Instalación

```bash
curl -sL https://raw.githubusercontent.com/vasallo94/skills/main/install.sh | bash -s -- delafu-mode
```

## Cuándo usar esta skill
- Cuando un repositorio no tiene un `CLAUDE.md`.
- Necesitas estandarizar convenciones (GIT, Changelog).
- Quieres aplicar capas de seguridad (SAST, secretos).

## Qué hace

Si la ejecutas en un repositorio vacío o sin reglas de Claude, realizará un análisis silencioso con **4 subagentes paralelos**. Luego propondrá instalar y configurar:

*   **A. Contexto IA (`CLAUDE.md`)**: El cerebro del proyecto (con "Progressive Disclosure").
*   **B. Ideas y Roadmap (`FUTURE.md`)**.
*   **C. Trazabilidad (`CHANGELOG.md`)**: Formato *Keep a Changelog* modificado para actualizarse antes de cada commit.
*   **D. Seguridad y Calidad**: Pre-commit hooks (`gitleaks`, `trufflehog`, `commitlint`).
*   **E. Estandarización Git**: Commits convencionales obligatorios.
*   **F. Decisiones Técnicas (`docs/adr/`)**: Architecture Decision Records en formato *Structured MADR 1.0.0*.
*   **G. Especificaciones (`_project_specs/`)**: Spec-Driven Development.

## Ejemplo de uso

Simplemente entra a cualquier proyecto de código desordenado o nuevo y ejecuta:

```bash
claude
# Y una vez dentro:
> aplica los estándares por favor
```

Si Claude no encuentra un archivo de contexto previo, lanzará al equipo de análisis (Agent Teams) automáticamente.
