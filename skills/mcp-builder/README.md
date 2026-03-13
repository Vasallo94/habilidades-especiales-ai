# 🛠️ MCP Builder Skill para Claude Code

[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skill-8A2BE2?style=flat-square&logo=anthropic)](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code)
[![MCP](https://img.shields.io/badge/Model%20Context%20Protocol-Ready-00A67E?style=flat-square)](https://modelcontextprotocol.io/)

Una guía integral y "herramienta de sistema" inyectable diseñada para guiar a Claude Code (o a ti mismo) en el desarrollo, estructuración y validación de **servidores MCP (Model Context Protocol)** de muy alta calidad.

Extraída directamente desde la documentación interna ("*system prompt*") oficial de Claude Desktop, esta skill actúa como un **Arquitecto Especialista en MCP**, asegurando que tus nuevas herramientas cumplan con los más estrictos estándares definidos por Anthropic.

---

## ⚡ Instalación (One-Liner)

Instala esta skill globalmente en tu entorno de Claude ejecutando:

```bash
curl -sL https://raw.githubusercontent.com/Vasallo94/habilidades-especiales-ai/main/install.sh | bash -s -- mcp-builder
```
> *Se instalará en `~/.claude/skills/mcp-builder/SKILL.md`, quedando disponible de forma nativa en cualquier directorio donde inicies `claude`.*

---

## 🎯 ¿Cuándo invocar esta skill?

Usa `mcp-builder` como tu guía de referencia siempre que:
- Vayas a **crear un servidor MCP desde cero** en Python (usando FastMCP) o en TypeScript/Node (usando el SDK oficial).
- Necesites **diseñar la arquitectura de herramientas (Tools) o recursos (Resources)** para envolver y exponer una API externa.
- Te atasques en cómo estructurar los Schemas `Zod` (TS) o Pydantic (Python).
- Necesites crear una **batería de evaluaciones (QA pairs)** robusta para probar tu nuevo MCP.

---

## 🧠 ¿Qué le enseña esta skill a Claude?

Adopta la metodología oficial de 4 Fases para el desarrollo en el ecosistema MCP:

### 1️⃣ Fase de Investigación y Diseño
Enseña a Claude a balancear "herramientas de flujo de trabajo" específicas frente a "endpoints de API crudos". Instruye sobre cómo crear convenciones de nombres coherentes (`github_create_issue`, `github_list_repos`) y cómo estructurar la gestión de contexto y la paginación.

### 2️⃣ Fase de Implementación
Contiene los patrones arquitectónicos nativos tanto para **TypeScript** (recomendado por Anthropic por los tipos estáticos) como para **Python**. Define cómo usar `WebFetch` para cargar dinámicamente el SDK más reciente, y cómo implementar Schemas y manejo de errores asíncrono con mensajes accionables.

### 3️⃣ Fase de Revisión y Calidad (QA)
Aplica el principio DRY y cobertura de tipos estricta. Instruye sobre cómo usar la herramienta indispensable `npx @modelcontextprotocol/inspector` para depuración local antes del despliegue.

### 4️⃣ Fase de Evaluaciones (Evaluation Matrix)
La joya de la corona: Enseña a Claude a autogenerar archivos `.xml` de evaluación con 10 o más preguntas trampa (complejas, resolubles solo con llamadas de solo-lectura múltiples y encadenadas) para testear matemáticamente que un LLM será capaz de entender y usar tus nuevas herramientas en el mundo real.

---

## 💻 Ejemplos de uso en el terminal

Entra en la carpeta donde estés programando tu MCP (o en una vacía si estás empezando), abre Claude Code y empieza a pedir con contexto:

**Crear desde cero:**
> *"Quiero crear un servidor MCP en TypeScript para integrarlo con la API de Jira. Usa la metodología de `mcp-builder` para proponerme qué herramientas exactas deberíamos exponer primero basado en sus especificaciones."*

**Auditoría de un MCP existente:**
> *"Revisa mi archivo server.ts. Basándote en el `mcp-builder`, ¿estoy implementando correctamente el outputSchema y las descripciones de mis tools para que un LLM nunca se confunda al usarlas?"*

**Generación del banco de pruebas:**
> *"Ya hemos terminado el servidor MCP de la NASA. Abre la guía `mcp-builder`, lee detenidamente la Fase 4 de Evaluaciones, y genérame el archivo XML con las 10 preguntas de prueba (QA_pairs) complejas."*
