# knowledge/ — Wissensbasis (Quelle, NICHT Autorität)

Dieser Layer enthält die **kanonischen Provolution-/PS-Familie-Dokumente** als **byte-getreue Spiegel** der Originale aus
`…/Provolution-main/_GEM_DEPLOY_2026-05-11/PF/knowledge_base/` (CANON, Autor: Tobias Yoka Dietz).

## Prioritätsregel (gilt für den gesamten Ordner)

> **Anweisungen vor Wissensbasis.** Bei jedem Konflikt zwischen einem Inhalt hier und einer Regel in
> `CLAUDE.md` / `system/` gilt die **Runtime-Anweisung**. Die Wissensbasis liefert *Inhalte, Fakten, Definitionen,
> Kataloge* (das **WAS**), nicht das **WIE** (Verfahren) und keine Verfahrensautorität.

Die per-Datei-Notiz wurde bewusst **nicht** in die Canon-Dateien geschrieben (sie sind Yokas Single Source of Truth und werden
durch `regenerate_consolidated_kb.py` neu erzeugt — direkte Edits würden überschrieben). Diese README hält die Einordnung
für den ganzen Layer fest.

## Inhalt (10 Dateien = 4 Konsolidate + 6 Modul-Specs)

**shared/ — Konsolidate**
- `00_PS_FAMILIE_UND_ENGINE.md` — PS-Familie, SEC-J-Engine, E0/MMM/VFP, 10 Achsen, Veto-Logik, Verdict-Systeme. **Heimat des PS-Kerns.**
- `01a_BAENDE_THEORIE.md` — Bände 1–3 (SEC-Kanon, Entscheidungskarte, Scientific Core).
- `01b_BAENDE_ANWENDUNG.md` — Bände 4–5 (Anwendungen, Steuerung/Score).
- `02_PROVOLUTION_EXTENSIONS.md` — Extensions (PS-U 2.0 SEC-J; Maßnahmenkataloge E11 Hanf/Hempcrete, E12 Urban, E13 Governance).

**subgems/ — Modul-Specs**
- `PV_spec_v2.0_2.md` · `PD_spec_v1.0.md` · `PI_spec_v1.0.md` · `PN_spec_v1.0.md` · `PP_spec_v1.0.md` · `PT_spec_v1.0.md`

> **Re-Sync:** Bei Canon-Änderung die Dateien erneut aus dem Quellpfad kopieren (byte-genau, keine Paraphrase — Konstanten/Formeln wörtlich).
