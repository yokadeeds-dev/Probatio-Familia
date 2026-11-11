# Probatio Familia

Alle Bestandteile der Probatio-Familie in einem Repo: Kanon-Spezifikationen, lauffähige Claude-Code-Runtime, Subagenten, Gemini-Gem-Prompts, Realbetrieb-Läufe und Archiv. Autor der Fachlogik: Tobias Yoka Dietz.

## Familie

| Kürzel | Name | Prüft | Kanon |
|---|---|---|---|
| MiMaMa | Mikro-Makro-Maschine | Vor-Linse aller Module: Skalen-Karte, PASS/FAIL, kein Verdict | `mimama/` (v1.1.0, Spec `MMM_spec_v1.0`) |
| J-Nature | Natur-Gerechtigkeit | Natur-Veto `J_wirksam = min(J_Mensch, 1 − J_Natur)` | `j-nature/` |
| PS | Probatio Systemica | Entry-Auditor, E1–E8-Kaskade | `canon/00_PS_Familie_Uebersicht.md`, `canon/SECJ_SPEC_v1.0.md` |
| PS-U | Probatio Systemica Universal | SEC-J auf 10 Achsen (STANDARD / JUSTICE) | `pf/modules/psu-*.md`, `gem/GEM_SYSTEM_PROMPT_PS_Universal_v1.1.md` |
| PV | Probatio Veritatis | Faktencheck | `canon/07_Probatio_Veritatis_v2.0_2.md` |
| PD | Probatio Deliberativa | Politikprozess | `canon/11_…`, `canon/PD_Probatio_Module_Handbuch.md` |
| PI | Probatio Institutionalis | Institutionen | `canon/12_…` |
| PN | Probatio Narrativa | Mediendiskurs / Framing | `canon/13_…` |
| PP | Probatio Philosophica | Argumentationsstruktur | `canon/14_…` |
| PT | Probatio Temporalis | Zeitreihen / Drift | `canon/15_…` |
| PF:REAL | Probatio · Im Realbetrieb | Orchestriert MiMaMa + Modul + J-Nature für reale Maßnahmen | `pf-real/` (v0.4.0) |

Nicht Teil der Familie: Probatio Technica (PTc), eigenes Repo `yokadeeds-dev/Probatio-Technica` (dort D1).

## Aufbau

| Ordner | Inhalt |
|---|---|
| `canon/` | Kanon-Specs der Module, Familien-Übersicht v1.1, Framework-Extensions v2.0 (SEC-J / PS-U 2.0), SEC-J-Spec v1.0 (deprecated), PD-Handbuch |
| `pf/` | Probatio Familia v1.0.1 als Claude-Code-Runtime: `system/`, `modules/`, `knowledge/`, `tests/`, `examples/`; PF-Läufe auf dem Vollwerk in `runs/`. `pf/CLAUDE.md` ist die Runtime-Verfassung |
| `mimama/` | Subagent MiMaMa (`agent/`), CANON-Spec `spec/MMM_spec_v1.0.md`, Entscheidung `docs/`, Quellarchiv `reference/` |
| `pf-real/` | Subagent PF:REAL (`agent/pf-real.md`, CHANGELOG) und Realbetrieb-Läufe in `studies/` |
| `j-nature/` | J-Nature (Natur-Veto): Konsolidat, Entscheidung, Diskussion |
| `vollwerk-anker/` | Von PF:REAL referenzierte Vollwerk-Konsolidate: Score-Modell, Bewertungsmacht-Sicherung, Robustheits-Stresstest |
| `gem/` | Gemini-Gem-Prompts (PS 4.0.1, PV 2.0.3, PD/PI/PP/PT 1.0.1, PN 2.0.1, MiMaMa, PF:REAL, PF 1.0, PS-Universal) mit `knowledge_base/` |
| `archive/` | Ältere Gem-Prompts, System-Prompts (NotebookLM-Export), Legacy-Bände 1–3, Gem-Audits 2026-04-21 |
| `scripts/` | `check.ps1` (statische Prüfung der Subagenten), `deploy.ps1` (nach `~/.claude/agents/`) |
| `docs/` | Inventar mit Herkunft und Lücken, Entscheidungen |

## Benutzung

```powershell
.\scripts\check.ps1     # Subagenten prüfen
.\scripts\deploy.ps1    # mimama + pf-real nach ~/.claude/agents/ kopieren
```

PF-Runtime direkt nutzen: Claude Code im Ordner `pf/` starten, dann `PF:AUTO`, `PV:FULL "…"`, `PF:STATUS` usw. (siehe `pf/README.md`).
