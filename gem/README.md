# Gem-Prompts + Wissensbasis (One-Stop für Gemini-Setup)

Dieses Verzeichnis enthält **alles was du für einen Gem in Gemini brauchst**:
- **Prompts** (`PX_X.md`-Dateien im Root) → Anleitung per Copy-Paste in den Gem-Editor
- **Wissensbasis** (`knowledge_base/shared/` + `knowledge_base/subgems/`) → Dateien zum Hochladen in die Gem-Wissensdatenbank

**Regel:** Prompts werden hier bearbeitet, dann in Gemini eingepflegt — nicht umgekehrt. Wissensbasis-Files sind **Mirror** aus `06_CANON/` (Source of Truth). Der historische `PROBATIO SYSTEMICA 2_0 GEM/`-Ordner wurde am 2026-04-19 nach `ARCHIVE/legacy_gem_folder_2026-04-19/` verschoben (reine Geschichts-Referenz, nicht aktiv).

---

## Was zu welchem Gem hochladen — Upload-Tabelle

| Gem | Prompt | Wissensbasis-Files (Upload in Gemini) |
|---|---|---|
| **PF** (Familia, alle Module) | `PF_1.0.md` | **4 Konsolidate** (`shared/_consolidated/`) + **6 Subgem-Specs** (`subgems/`) = **10 Dateien (Limit)** |
| **PS** (Entry, E1–E8-Kaskade) | `PS_2.0.md` | `knowledge_base/shared/` **komplett** (11 Files: 00 + 01–10) |
| **PV** (Faktencheck) | `PV_2.0.2.md` | `knowledge_base/subgems/PV_spec_v2.0_2.md` · optional `shared/00_PS_Familie_Uebersicht.md` |
| **PD** (Politikprozess) | `PD_1.0.md` | `knowledge_base/subgems/PD_spec_v1.0.md` · optional `shared/00_…` |
| **PI** (Institutionen) | `PI_1.0.md` | `knowledge_base/subgems/PI_spec_v1.0.md` · optional `shared/00_…` |
| **PN** (Mediendiskurs) | `PN_2.0.md` | `knowledge_base/subgems/PN_spec_v1.0.md` · optional `shared/00_…` |
| **PP** (Normativ) | `PP_1.0.md` | `knowledge_base/subgems/PP_spec_v1.0.md` · optional `shared/00_…` |
| **PT** (Zeitreihen) | `PT_1.0.md` | `knowledge_base/subgems/PT_spec_v1.0.md` · optional `shared/00_…` |

**Hinweis zu `shared/00_PS_Familie_Uebersicht.md`:** Enthält die Cross-Routing-Logik zwischen allen Gems. Optional bei Sub-Gems, aber empfehlenswert damit der Gem weiß, wann er an andere Gems verweisen soll.

---

## Module

| Datei | Gem | Version | Status |
|---|---|---|---|
| `PV_2.0.2.md` | Probatio Veritatis | 2.0.2 | ✅ 2026-04-17 überarbeitet (v1.0-Features + v2.0-Struktur + Fazit-First) |
| `PD_1.0.md` | Probatio Deliberativa | 1.0 | ✅ 2026-04-17 aus Canon + harmonisiert |
| `PI_1.0.md` | Probatio Institutionalis | 1.0 | ✅ 2026-04-17 aus Canon + harmonisiert |
| `PN_2.0.md` | Probatio Narrativa | 2.0 | ✅ 2026-04-17 aus bestehendem v2.0 + harmonisiert |
| `PP_1.0.md` | Probatio Philosophica | 1.0 | ✅ 2026-04-17 aus Canon + harmonisiert |
| `PT_1.0.md` | Probatio Temporalis | 1.0 | ✅ 2026-04-17 konsolidiert aus Gem #1 + #5, PP-Orchestrierung + PT:PLAIN beide behalten |
| `PF_1.0.md` | Probatio Familia (Alle Module) | 1.0.1 | ✅ 2026-05-14 — Vereinigter Mega-Gem: VFP-Dispatcher + alle 7 Module als Regelwerk-Blöcke + Chaining-Trigger + konsolidiertes Output-Format + Defensiv-Patches (Modul-Liste, PS-U Split, R16-R18) |
| `PS_2.0.md` | Probatio Systemica (Entry) | 2.0 | ✅ 2026-04-19 konsolidiert aus `Anweisungen.md` (98 Z.) — Fazit-First + harmonisierte Modi + 4-stufige Verdicts + Hybrid-Routing zu Sub-Gems |

---

## Globale Design-Entscheidungen (2026-04-17)

Gelten für **alle** Gem-Prompts:

### Output-Reihenfolge: Fazit zuerst
```
1. VERDICT / STATUS   ← Fazit in einer Zeile
2. KERN-BEGRÜNDUNG    ← 1-2 Sätze warum
3. Flags (falls aktiv)
4. Details (Scores, Artefakte, Formeln, Dimensionen)
5. Quellen + Einschränkungen
6. Modi-Footer mit Inline-Code
```

### Modi-Footer (Bottom jeder Antwort)
Inline-Code-Blocks als Click-to-Copy, z.B.:
```
Weitere Prüfmodi: `PV:FULL` · `PV:LITE` · `PV:PLAIN` · `PV:J` · `PV:MMM` · `PV:VFP` · `PV:STATUS`
```

### Harmonisierte Modus-Namen über alle Sub-Gems

| Rolle | Befehl | Bedeutung |
|---|---|---|
| Standard | `*:FULL` | Vollständiger Begründungspfad |
| Kurz | `*:LITE` | Verdict + 1-Satz-Kern |
| Laien | `*:PLAIN` | Fließtext, max. 250/300 Wörter |
| J-only | `*:J` | Nur Gerechtigkeits-Analyse |
| VFP-only | `*:VFP` | Nur Vorfilter-Artefakt |
| Status | `*:STATUS` | Aktueller Prüfstand |

Modul-spezifische Zusatz-Modi:
- PV: `MMM` (Skalenbruch-Check)
- PN: `S` (Evidenzbasis)
- PP: `KANT` (Universalisierungstest)
- PT: `CHECK`, `TREND`, `REVISION`
- PS: `E1`–`E8` (Einzelebene), `KASKADE` (Alias für FULL), `U` (Verweis auf framework-neutrale PS-U-Variante)

### Transparenz-Tags im FULL-Modus
Prüfschritte mit Tags kennzeichnen: `[VFP V1]`, `[PV: S-Prüfung]`, `[PD: C-Prüfung]`. Nicht im PLAIN-Modus.

### PLAIN-Modus-Regeln (universell)
- Keine Fachbegriffe (EG-1, C_int, VFP, MMM, DG-1, UG-1, PG-1, NT-x, AT-x etc.)
- Max. **250 Wörter** (PN und PP: 300, da Framing-Karte / philosophische Nuance mehr Raum brauchen)
- Ton sachlich-zugänglich, wie gute Zeitung
- Analogien erlaubt, Polemik nicht

### Routing zu anderen Modulen (Cross-References)
Jeder Gem nennt explizit in `ABGRENZUNG`, wann er an welches Submodul verweist:
- Faktische Claims → PV
- Normative/philosophische Argumente → PP
- Politikprozesse → PD
- Institutionen → PI
- Mediendiskurs → PN
- Maßnahmen (Systemcheck) → PS-U
- Score-Drift über Zeit → PT

### "Anweisungen vor Wissensbasis"
Regel in jedem Prompt: Bei Widerspruch zwischen Anleitung und hochgeladener Datei gewinnt die Anleitung.

---

## Formel-Übersicht (Kurzreferenz)

| Modul | SEC-J-Formel | Dominant |
|---|---|---|
| PS-U | 0,30·S + 0,25·E + 0,30·C + 0,15·J | S/C paritätisch |
| PV | 0,30·S + 0,20·E + 0,20·C_ext + 0,15·C_int + 0,15·J | C (gesamt 0,35) |
| PD | 0,30·S + 0,20·E + 0,25·C + 0,25·J | S führend, C/J paritätisch |
| PI | 0,30·S + 0,20·E + 0,25·C + 0,25·J | S führend, C/J paritätisch |
| PN | 0,20·S + 0,15·E + 0,25·C + 0,40·J | J dominant |
| PP | 0,25·S + 0,25·E + 0,35·C + 0,15·J | C dominant |
| PT | — | keine eigene Formel, misst Drift |
| PF | — | dispatcht an Submodul, keine eigene Formel |

---

## Verdict-Tabelle (Kurzreferenz)

| Modul | Verdicts (Fach) | Plain |
|---|---|---|
| PV | VERIFIED / UNCERTAIN / FALSE / FABRICATED / UNSUBSTANTIATED | BESTÄTIGT / UNSICHER / FALSCH / HALTLOS / UNBELEGT |
| PD | KONFORM / BEDINGT KONFORM / DEFIZITÄR / NICHT KONFORM | ORDNUNGSGEMÄSS / MIT MÄNGELN / ERHEBLICH MANGELHAFT / NICHT ORDNUNGSGEMÄSS |
| PI | INTEGER / BEDINGT INTEGER / DEFIZITÄR / NICHT INTEGER | GLAUBWÜRDIG / BEDINGT GLAUBWÜRDIG / GROSSE LÜCKEN / NICHT GLAUBWÜRDIG |
| PN | AUSGEWOGEN / EINSEITIG / STARK VERZERRT / PROPAGANDISTISCH | AUSGEWOGEN / EINSEITIG / STARK EINSEITIG / IRREFÜHREND |
| PP | KOHÄRENT / BEDINGT KOHÄRENT / KONTROVERS / INKOHÄRENT | IN SICH STIMMIG / ÜBERWIEGEND STIMMIG / WIDERSPRÜCHLICH / IN SICH WIDERSPRÜCHLICH |
| PT | EMERGING / CONVERGING / STABLE / DECLINING / REVERSED / INSTABIL | IN ENTWICKLUNG / KURZ VOR ÄNDERUNG / STABIL / VERSCHLECHTERT SICH / GEÄNDERT / NOCH UNKLAR |
| PS | BESTANDEN / TEILBESTANDEN / FALSIFIZIERT / NICHT PRÜFBAR | TRAGFÄHIG / TEILWEISE TRAGFÄHIG / NICHT TRAGFÄHIG / NICHT BEURTEILBAR |
| PF | je nach geroutetem Submodul | erbt Verdict des aktivierten Moduls |

---

## Workflow

### Prompt-Änderung
1. `GEM_PROMPTS/PX_X.md` hier bearbeiten
2. Datum im Prompt-Header aktualisieren
3. Im Gemini-Gem-Editor: Anleitung komplett ersetzen (Copy-Paste)
4. Speichern + Smoke-Test (z.B. `PX:STATUS`)

### Wissensbasis-Änderung (Canon-File geändert)
1. Canon-File in `06_CANON/` bearbeiten (Source of Truth)
2. Re-Sync nach `GEM_PROMPTS/knowledge_base/` (shared oder subgems, je nach Datei):
   - `cp 06_CANON/04_Band4_Anwendungen_v4.2.md GEM_PROMPTS/knowledge_base/shared/04_provolution_band4_anwendungen_v4.2_COMPLETE.md`
   - (Subgem-Specs analog aus 06_CANON/07–15)
3. In Gemini: betroffene Wissensdatei ersetzen (alte löschen, neue hochladen)
4. Im Audit-Log vermerken: `08_INDEX/_AUDIT_YYYY-MM-DD.md`

### Neuer Gem
1. Prompt `GEM_PROMPTS/PNEW_X.md` schreiben (Vorlage: bestehende)
2. Wissensbasis-Canon in `06_CANON/` anlegen
3. Copy nach `knowledge_base/subgems/PNEW_spec_vX.Y.md`
4. Upload-Tabelle in diesem README erweitern
5. Modul-Tabelle + Formel/Verdict-Übersicht unten ergänzen

---

## Bekannte Baustellen

- **PV 2.0.2 Gem in Gemini** hat PN-Anleitung fälschlich drin → muss mit `PV_2.0.2.md` überschrieben werden (URGENT)
- **PT-Dopplung in Gemini:** zwei Temporalis-Gems (#1 türkis v1.0, #5 orange PT v1.0) — `PT_1.0.md` konsolidiert beide; erst anwenden, dann ggf. Dopplung löschen
- ✅ **E11 im lokalen Gem-Ordner ergänzt** (2026-04-18, Copy aus `06_CANON/08_extension_e11_hanf_universalanwendungen_v1.0.md`). **Echter Gem in Gemini** muss separat hochgeladen werden.
- ✅ **Canon-Korrekturen in Gem-Wissensdateien gespiegelt** (2026-04-18): Band 4 v4.2 Agentic-Restore + Dynamisierung beidseitig propagiert. Echte Gems in Gemini brauchen Re-Upload der Wissensdatei.
- ✅ **E0-Asymmetrie gefixt** (2026-04-19) — `07_extension_e0_mikro_makro_vorfilter_v1.0.md` war Spiegelungs-Lücke (nicht Absicht): Canon-Datei `06_framework_extensions_v1.0_SECJ.md` referenzierte sie formal gleichwertig zu E11/E12/E13, aber die Datei fehlte im Canon. Jetzt aus Gem-Ordner ins Canon kopiert, Extension-Reihenfolge vollständig (06/07/08/09/10 = Framework/E0/E11/E12/E13).
- ✅ **Encoding-Migration abgeschlossen** (2026-04-19) — Canon-Extensions 06/08/09/10 waren UTF-16 LE mit cp850-Mojibake, jetzt sauber UTF-8. Gem-Ordner-08 ebenfalls. Grep/Search/Diff funktioniert jetzt auf allen Extensions.

---

*Verwaltet in: `D:/Yoka/Workspace/Provolution-main/GEM_PROMPTS/`*
