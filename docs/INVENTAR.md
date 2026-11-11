# Inventar – Herkunft und Lücken (Stand 2026-11-11)

## Übernommen

| Ziel | Quelle | Abgleich |
|---|---|---|
| `canon/` (10 Specs) | `Documents/CLAUDE WORKSPACE/Provolution-new/canon/de/` (= GitHub `Provolution`, main, Stand 2026-10-14) | 8 Dateien identisch mit Legacy/Worktree; `00_PS_Familie_Uebersicht` und `SECJ_SPEC_v1.0` dort neuer |
| `canon/PD_Probatio_Module_Handbuch.md` | Provolution-Worktree `11_BLUEPRINT/07_PROBATIO_INTEGRATION/` | |
| `pf/` | `Documents/Claude/Projects/Systemtools/probatio-familia/` (kein Git, Stand 2026-06-02) | Subgem-Specs identisch mit `gem/knowledge_base/subgems/` |
| `mimama/` | Repo `F:\Yoka\Workspace\MiMaMa` (Commit 420b210) | hash-identisch mit `~/.claude/agents/mimama.md` |
| `pf-real/agent/` | `~/.claude/agents/pf-real.md` | hash-identisch mit Worktree `.claude/agents/pf-real.md` |
| `pf-real/studies/` | Worktree `STUDIES/PF_REAL/` (PNOG, Tankrabatt Q4, beide 2026-10-04) | |
| `gem/` | Worktree `GEM_PROMPTS/` | identisch mit `Provolution-legacy/GEM_PROMPTS/` |
| `gem/GEM_SYSTEM_PROMPT_PS_Universal_v1.1.md` | `Provolution-new/manuscript/peer_reviews/` | |
| `archive/gem-system-prompts-notebooklm/` | Worktree `_notebooklm_export/` | |
| `archive/legacy-baende/` | Worktree `ARCHIVE/legacy_gem_folder_2026-04-19/` | identisch mit `gem/knowledge_base/shared/01–03` |

Worktree = `Documents/##### Arbeitsroot Claude/Worktrees/Provolution-main/sleepy-diffie-fd8f69` (verwaist: sein Haupt-Repo `D:\Yoka\Workspace\Provolution-main` existiert nicht mehr).

## Lücken (lokal nicht gefunden)

Von den Agenten referenziert, auf C:, D:, F:, G: (unverschlüsselt) nicht auffindbar:

- `MMM_spec_v1.0.md` (CANON-Spec der MiMaMa, referenziert in `mimama/agent/mimama.md`)
- `DEC_2026-06-04_mmm_revival.md`, `05_REFERENZ/MMM_ORIGINAL_…`, `MMM_PREHISTORY_…`
- `02_KONSOLIDIERUNG/J_NATURE.md`, `SCORE_MODELL.md`, `BEWERTUNGSMACHT_SICHERUNG.md`, `ROBUSTHEIT_STRESSTEST.md` (Vollwerk, referenziert in `pf-real`)
- weitere PF:REAL-Läufe (GEG, Warken), nur aus den Changelogs bekannt

Vermutlicher Ort: das gelöschte `D:\Yoka\Workspace\Provolution-main` bzw. `G:\.Encrypted\Meine Ablage\Provolution-Vollwerk`.

## Bewusst nicht übernommen

- Probatio Technica (PTc): kein Familienmitglied (PTc-Repo D1), eigenes Repo.
- Integrationen anderer Projekte: n8n `Probatio_Chain_n8n_v1.json`, `MEGA-ORCHESTRATOR/04_PROBATIO`, Web-Backend `Save the Provolution/Web` (probatio-Router/DB), Landing-Page. Bleiben in ihren Projekten.
- Buch-Manuskript `Manuskript_Probatio_Systemica_v0.1.docx`, Prosa-Kapitel.
