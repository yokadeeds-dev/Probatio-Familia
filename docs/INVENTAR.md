# Inventar – Herkunft und Lücken (Stand 2026-11-11)

Abkürzungen der Quellen:
- **GD** = Google-Drive-Sicherung `G:\Meine Ablage\Claude-Backup\VLAGSCHIVV\current\D-Rettung-Yoka\Workspace\` (Rettung des gelöschten `D:\Yoka\Workspace`)
- **GD/main** = darin `Provolution-main` (Git, letzter Commit 1ba2422, 2026-07-01) · **GD/Vollwerk** = darin `Provolution-Vollwerk`
  - Herkunft: alte Provolution-Historie, nach dem Neustart von GitHub `Provolution` (2026-05-27, neuer Root-Commit 8dbeb51) lokal weitergeführt. Die 4 nie gepushten Commits (a20d75b, c1951c4, 50717d8, 1ba2422) liegen seit 2026-11-11 im privaten Repo `Provolution-legacy`, Branch `rescue/d-drive-2026-07-01`.
- **PN** = `Documents/CLAUDE WORKSPACE/Provolution-new` (= GitHub `Provolution`, main, 2026-10-14)
- **WT** = verwaister Worktree `Documents/##### Arbeitsroot Claude/Worktrees/Provolution-main/sleepy-diffie-fd8f69`

## Übernommen

| Ziel | Quelle | Abgleich |
|---|---|---|
| `canon/07…15_Probatio_*.md` | PN `canon/de/` | identisch mit GD/main, WT, Legacy |
| `canon/00_PS_Familie_Uebersicht.md` | GD/main `GEM_PROMPTS/knowledge_base/shared/` | v1.1 (2026-05-11); PN hat nur v1.0 |
| `canon/06_framework_extensions_v2.0_SECJ.md` | GD/main `GEM_PROMPTS/knowledge_base/shared/` | aktuelle PS-U-2.0-Formel |
| `canon/SECJ_SPEC_v1.0.md` | PN `canon/de/` | dort als DEPRECATED markiert (seit 2026-05-10) |
| `canon/PD_Probatio_Module_Handbuch.md` | WT `11_BLUEPRINT/07_PROBATIO_INTEGRATION/` | |
| `pf/` (ohne `runs/`) | `Documents/Claude/Projects/Systemtools/probatio-familia/` (kein Git, 2026-06-02) | |
| `pf/runs/vollwerk-2026-06-02/` | GD/Vollwerk `99_META/PF_INTEGRATION_*`, `PF_VERLAEUFE_RAW_*` | |
| `mimama/agent/` | Repo `F:\Yoka\Workspace\MiMaMa` (420b210) | hash-identisch mit `~/.claude/agents/` und GD/main `.claude/agents/` |
| `mimama/spec/MMM_spec_v1.0.md` | GD/main `GEM_PROMPTS/knowledge_base/subgems/` | |
| `mimama/docs/DEC_2026-06-04_mmm_revival.md` | GD/main `01_STRATEGIE/DECISIONS/` | |
| `mimama/reference/MMM_*` | GD/main `05_REFERENZ/` | |
| `pf-real/agent/` | `~/.claude/agents/pf-real.md` | hash-identisch mit WT und GD/main |
| `pf-real/studies/` | WT `STUDIES/PF_REAL/` (PNOG, Tankrabatt Q4, 2026-10-04) | in GD/main nicht vorhanden |
| `j-nature/` | GD/Vollwerk `02_KONSOLIDIERUNG/J_NATURE.md`, `99_META/DEC_2026-06-04_J-Nature.md`, `J-Nature-diskussion.md` | |
| `vollwerk-anker/` | GD/Vollwerk `02_KONSOLIDIERUNG/` | |
| `gem/` | GD/main `GEM_PROMPTS/` | neuer als WT/Legacy (PS 4.0.1 statt 3.0 usw.) |
| `gem/PF_1.0.md` | WT `GEM_PROMPTS/` | nur dort; Mega-Gem PF v1.0.1 |
| `gem/GEM_SYSTEM_PROMPT_PS_Universal_v1.1.md` | PN `manuscript/peer_reviews/` | |
| `docs/DEC_2026-05-11_PS_4.0.1_stability_patch.md` | GD/main `01_STRATEGIE/DECISIONS/` | |
| `archive/gem-prompts-alt/` | WT `GEM_PROMPTS/` | ersetzte Fassungen |
| `archive/gem-system-prompts-notebooklm/` | WT `_notebooklm_export/` | |
| `archive/legacy-baende/` | WT `ARCHIVE/legacy_gem_folder_2026-04-19/` | |
| `archive/gem-audits-2026-04-21/` | GD/main `STUDIES/GEM_AUDITS_2026-04-21/` | |

## Lücken

- Weitere PF:REAL-Läufe (GEG, Warken) sind nur aus den Changelogs bekannt, auch in der Sicherung nicht als Datei vorhanden.

## Bewusst nicht übernommen

- Probatio Technica (PTc): kein Familienmitglied (PTc-Repo D1), eigenes Repo.
- Integrationen anderer Projekte: n8n `Probatio_Chain_n8n_v1.json`, `MEGA-ORCHESTRATOR/04_PROBATIO`, Web-Backend `Save the Provolution/Web`, Landing-Page.
- Übriges Vollwerk (Kapitel, Gesamtfassung, Prüfungen) und Buch-Manuskript: gehören zu Provolution, nicht zur Familie.
