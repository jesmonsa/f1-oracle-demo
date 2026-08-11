# 🏎️ F1 Analytics en Oracle Cloud — Demo

Demo del **Oracle Innovators Club** (meetup con Team One): cómo, en una tarde, se arma un tablero y **IA que responde en español** sobre datos — todo dentro de **Oracle Autonomous Database 26ai**, con **SELECT AI**. Fácil, seguro e intuitivo.

## 🔗 En vivo
- **Dashboard** → `index.html`
- **Guía paso a paso** → `paso-a-paso.html`
- **Guion de 30 min** → `guion-30min.md`

## Qué muestra
- Tablero visual del campeonato (clasificación, evolución de puntos).
- **SELECT AI**: preguntas en español → la base escribe el SQL y trae el dato.
- El dato **no sale** a una IA pública: la IA (OCI Generative AI) se usa por identidad del tenant, sin claves.

## Cómo reproducirlo
En un esquema aislado de tu Autonomous Database 26ai, ejecuta en orden:
1. `sql/00_usuario_ADMIN.sql` — crea el esquema (como ADMIN). Pon tu propia clave donde dice `<CLAVE_F1DEMO>`.
2. `sql/01_tablas.sql` — tablas + vista.
3. `sql/02_datos.sql` — datos ilustrativos.
4. `sql/03_select_ai.sql` — perfil SELECT AI (pon tu `<OCID_COMPARTMENT_GENAI>`).

Requisitos: un *dynamic group* + *policy* que permitan `use generative-ai-family`, y `enable_resource_principal` para el esquema.

## Nota
Datos **ilustrativos** (nombres reales de pilotos/escuderías con puntajes de ejemplo). No es la clasificación oficial. Sin credenciales ni identificadores del tenant en este repo.
