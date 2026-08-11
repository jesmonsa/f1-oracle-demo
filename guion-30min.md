# Guion de 30 minutos — F1 Demo · Oracle Innovators Club

**Contexto:** meetup con Team One (~40 personas, entusiastas, clientes y curiosos). Team One presenta su caso F1 → tú cabalgas el tema desde el ángulo Oracle Cloud. Tono relajado, tarde, fuera de lo laboral.

**Objetivo:** que la sala sienta que Oracle Cloud es **fácil, seguro, asertivo e intuitivo** — y engancharlos con la comunidad.

---

## Minuto a minuto

### 0:00 – 2:00 · Apertura
- Preséntate corto. Agradece a Team One por venir y por el espacio.
- Gancho: *"En los próximos minutos les muestro cómo, en una tarde, se arma IA sobre datos reales dentro de Oracle Cloud. Y sí, con datos de F1 — para no quedarnos atrás de Team One 😉."*

### 2:00 – 10:00 · El proyecto de comunidad (Oracle Innovators Club)
- Qué es: comunidad lanzada en abril para **conectar personas, crear espacios de aprendizaje** y un lugar seguro para conocer tecnología (priorizando Oracle).
- Propósito: casos de uso prácticos, recursos, herramientas, conocimiento; que la gente se vuelva fan de la tecnología.
- Invítalos: *"esto es justo lo que hacemos en la comunidad — cosas prácticas como la que viene ahora."*

### 10:00 – 12:00 · Transición al demo
- *"Para que no sea solo palabras, les traje algo tangible. Nada de slides pesados: un tablero y preguntas en español a la base."*
- Abre el **dashboard** (pestaña ya lista).

### 12:00 – 16:00 · El gancho visual (dashboard)
- Muestra KPIs + clasificación animada + evolución de puntos. Deja que respire.
- Toca 1-2 preguntas del buscador **SELECT AI** del dashboard.
- *"Fíjense: no escribí SQL. Pregunté en español y la base escribió la consulta sola."*

### 16:00 – 24:00 · SELECT AI en la base REAL (el momento fuerte)
- Pasa a **Database Actions (F1DEMO)**. Corre en vivo (ver `paso-a-paso.html`):
  1. `showsql` → *"me muestra el SQL que escribió."*
  2. `runsql` "top 3 escuderías" → **McLaren 512 · Red Bull 441 · Ferrari 438**.
  3. **Improvisa:** pide una pregunta a la sala y escríbela. (Seguras: victorias de Ferrari · pilotos españoles por puntos · pilotos por escudería.)
- Remacha el porqué: *"esto corre dentro de la Autonomous Database. El dato no sale a una IA pública."*

### 24:00 – 27:00 · Cierre y mensaje
- **Frase madre:** *"No es un proyecto de meses. Datos + una tarde = IA que responde en español y un tablero, todo dentro de Oracle Cloud. Fácil, seguro, intuitivo."*
- Conecta con Team One: *"ustedes vieron el caso; así de fácil se monta sobre Oracle."*

### 27:00 – 30:00 · Q&A + llamado a la comunidad
- 2-3 preguntas (respuestas rápidas en `paso-a-paso.html`).
- Cierre: invita a sumarse al **Oracle Innovators Club**. *"Si esto les gustó, en la comunidad hacemos esto seguido."*

---

## Frases clave (para memorizar)
- "No escribí SQL: le pregunté en español."
- "El dato no sale a ninguna IA pública — vive en tu tenant."
- "En una tarde, no en meses."
- "Fácil, seguro, asertivo, intuitivo."

## Plan B (si algo falla en vivo)
- **La base no responde / lenta:** usa el **dashboard** (autocontenido) — el buscador SELECT AI ahí muestra SQL + resultado sin depender de la red.
- **SELECT AI tarda:** ya lo "calentaste" antes; si aun así demora, narra mientras carga o pasa a la siguiente pregunta.
- **Sin internet:** el dashboard funciona offline; apóyate 100% en él.

## Checklist (5 min antes)
- ☐ `adb-control.sh start` → AVAILABLE
- ☐ Dashboard abierto (pestaña 1)
- ☐ Database Actions logueado como F1DEMO (pestaña 2)
- ☐ 1 pregunta SELECT AI de prueba corrida (calentar)
- ☐ Apagar al terminar: `adb-control.sh stop`
