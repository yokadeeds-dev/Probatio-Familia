# Probatio Familia – Einstieg für jede Session

Antworten auf Deutsch, knapp, Aktion zuerst. Überblick: `README.md`. Herkunft und Lücken: `docs/INVENTAR.md`.

## Grundregeln

- Dieses Repo ist die Pflege-Quelle der Familie. `pf/CLAUDE.md` ist die **Runtime-Verfassung** von PF, keine Pflege-Regel; sie gilt nur, wenn PF im Ordner `pf/` ausgeführt wird.
- `~/.claude/agents/mimama.md` und `pf-real.md` nie direkt bearbeiten. Nur `<agent>/agent/<agent>.md` ändern, dann `scripts/check.ps1`, dann `scripts/deploy.ps1`.
- Jede Änderung an einem Agenten: Version erhöhen, CHANGELOG des Agenten im selben Commit.
- Kanon (`canon/`) ist mit dem Provolution-Repo (`canon/de/`) abgeglichen. Änderungen am Kanon zuerst dort oder bewusst hier mit Decision-Datei in `docs/`.
- Inhaltliche Grenzen (MiMaMa v1.x ohne Holistik und ohne Verdict, keine weiteren Module außer den gelisteten) sind bewusst; Änderungen daran als `docs/DEC_*.md`.
- Skripte nur ASCII (PowerShell 5.1). Dateien UTF-8 ohne BOM, LF (`.gitattributes`). Repo liegt auf exFAT: `safe.directory` global gesetzt.
- GitHub: `yokadeeds-dev/Probatio-Familia`, privat.
- Was in Plan, Decisions oder Memory steht, nicht erneut fragen.
