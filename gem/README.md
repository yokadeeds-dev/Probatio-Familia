# Gem-Prompts + Wissensbasis (One-Stop für Gemini-Setup)

Dieses Verzeichnis enthält **alles was du für einen Gem in Gemini brauchst**:
- **Prompts** (`PX_X.md`-Dateien im Root) → Anleitung per Copy-Paste in den Gem-Editor
- **Wissensbasis** (`knowledge_base/shared/` + `knowledge_base/subgems/`) → Dateien zum Hochladen in die Gem-Wissensdatenbank

**Regel:** Prompts werden hier bearbeitet, dann in Gemini eingepflegt — nicht umgekehrt. Wissensbasis-Files sind **Mirror** aus `06_CANON/` (Source of Truth). Der historische `PROBATIO SYSTEMICA 2_0 GEM/`-Ordner wurde am 2026-04-19 nach `ARCHIVE/legacy_gem_folder_2026-04-19/` verschoben (reine Geschichts-Referenz, nicht aktiv).

---

## Was zu welchem Gem hochladen — Upload-Tabelle

**Konvention seit 2026-05-11:** Wissensbasis ist konsolidiert auf **4 thematische Files** *(statt 9 Einzeldateien)*. Die Konsolidate liegen in `knowledge_base/shared/_consolidated/` und werden über `_tools/regenerate_consolidated_kb.py` aus den Original-Files in `shared/` regeneriert. **Alle Sub-Module bekommen die volle Provolution-Wissensbasis** *(Trade-Off-Test 2026-05-11 mit PS: 8/8 Tests bestanden, inkl. Cross-Konsolidat-Lookup auf 140-KB-Datei)*.

| Gem | Prompt | Wissensbasis-Files (Upload in Gemini) |
|---|---|---|
| **PS** (Entry, E1–E8-Kaskade) | `PS_4.0.1.md` *(seit 2026-05-11)* | **4 Files:** alle 4 aus `knowledge_base/shared/_consolidated/` |
| **PV** (Faktencheck) | `PV_2.0.3.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PV_spec_v2.0_2.md` + alle 4 aus `shared/_consolidated/` |
| **PD** (Politikprozess) | `PD_1.0.1.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PD_spec_v1.0.md` + alle 4 aus `shared/_consolidated/` |
| **PI** (Institutionen) | `PI_1.0.1.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PI_spec_v1.0.md` + alle 4 aus `shared/_consolidated/` |
| **PN** (Mediendiskurs) | `PN_2.0.1.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PN_spec_v1.0.md` + alle 4 aus `shared/_consolidated/` |
| **PP** (Normativ) | `PP_1.0.1.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PP_spec_v1.0.md` + alle 4 aus `shared/_consolidated/` |
| **PT** (Zeitreihen) | `PT_1.0.1.md` *(seit 2026-05-11)* | **5 Files:** `subgems/PT_spec_v1.0.md` + alle 4 aus `shared/_consolidated/` |

**Die 4 Konsolidate:**
1. `00_PS_FAMILIE_UND_ENGINE.md` *(36 KB)* — Hub + PS-U 2.0 + E0-Vorfilter
2. `01a_BAENDE_THEORIE.md` *(117 KB)* — Bands 1+2+3
3. `01b_BAENDE_ANWENDUNG.md` *(140 KB)* — Bands 4+5
4. `02_PROVOLUTION_EXTENSIONS.md` *(50 KB)* — E11+E12+E13

**Reserve im Gemini-10-Limit:** PS hat 6 freie Slots, Sub-Module haben 5 — komfortabel für künftige Erweiterungen.

**Deploy-Bundle:** `_GEM_DEPLOY_2026-05-11/` enthält pro Gem einen Subordner mit allen nötigen Files + `00_DESCRIPTION.md` *(Titel, Version, Description, Wissensbasis-Liste, Smoke-Test)*. Plus `00_MASTER_PROMPT.md` für Comet-Assistent-gestütztes sequentielles Deployment.

---

## Module

| Datei | Gem | Version | Status |
|---|---|---|---|
| `PV_2.0.3.md` | Probatio Veritatis | 2.0.3 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R20 Architektur-Reflex + PS-U:STANDARD/JUSTICE in ABGRENZUNG (in 2.0.2 vergessen). Vorgänger: PV_2.0.2 (2026-04-17) |
| `PD_1.0.1.md` | Probatio Deliberativa | 1.0.1 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R18 Architektur-Reflex + PS-U-Split. Vorgänger: PD_1.0 (2026-04-17) |
| `PI_1.0.1.md` | Probatio Institutionalis | 1.0.1 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R19 Architektur-Reflex + PS-U-Split. Vorgänger: PI_1.0 (2026-04-17) |
| `PN_2.0.1.md` | Probatio Narrativa | 2.0.1 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R17 Architektur-Reflex + PS-U-Split. Vorgänger: PN_2.0 (2026-04-17) |
| `PP_1.0.1.md` | Probatio Philosophica | 1.0.1 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R19 Architektur-Reflex + PS-U-Split. Vorgänger: PP_1.0 (2026-04-17) |
| `PT_1.0.1.md` | Probatio Temporalis | 1.0.1 | ✅ 2026-05-11 — Defensiv-Patch: hardcoded Modul-Liste + R17 Architektur-Reflex + PS-U-Split. Vorgänger: PT_1.0 (2026-04-17) |
| `PS_4.0.1.md` | Probatio Systemica (Entry) | 4.0.1 | ✅ 2026-05-11 — Stabilitäts-Patch: Standalone-Konvention wiederhergestellt (4.0 war Delta-Spec), R18 Architektur-Fragen-Reflex + hardcoded Modul-Liste in IDENTITÄT → schließt Halluzinations-Vektor aus Smoke-Test 2026-05-10. Inhaltlich: VFP-V4 Achsen-Erkennung + PS-U:STANDARD/JUSTICE-Routing + R16/R17 wie in 4.0. Vorgänger: PS_4.0.md, PS_3.0.md |
| `MiMaMa_1.1.0.md` | Mikro-Makro-Maschine (**Vor-Linse**) | 1.1.0 | 🧪 2026-06-04 — **Revival-Draft, (noch) kein Canon.** Skalen-Vor-Linse (Nano–Mikro–Meso–Makro–Meta), erzeugt Skalen-Karte + PASS/FAIL-Vorentscheidung, **kein Score/Verdict** (gehört nicht in Formel-/Verdict-Übersicht). Allen Modulen vorgeschaltet. Wissensbasis: `subgems/MMM_spec_v1.0.md`. Handle **„MiMaMa"** (nicht „MMM" — Repo-Priorität ESG: „MMM" = modulinternes M1/M2/M3-Matching). v1.1: **Quellen-Bindungs-Gate (C_ext)** + `MiMa:VERIFY`. E0-vs-MiMaMa (Ersatz/Ergänzung) = offene Kanon-Entscheidung → `01_STRATEGIE/DECISIONS/DEC_2026-06-04_mmm_revival.md`. Vorgänger: MiMaMa_1.0.0. |
| `PF_REAL_0.4.0.md` | Probatio · Im Realbetrieb (**Anwendungs-Modus**) | 0.4.0 | 🧪 2026-06-06 — **Realbetrieb-Orchestrator, kein eigenständiges Modul.** Prüft offiziell beschlossene/parlamentarisch befasste politische Maßnahmen und gibt einen publikationsfertigen Beitrag für Provolution.org aus. Kombiniert MiMaMa-Vorfilter + passendes Probatio-Modul (PS-U/PD/PI/PN/PV/PP/PT) + J-Nature in einem Durchlauf. Trigger-Gate erforderlich (offizielle PM oder parlamentarische Befassung) — kein Eingehen auf Gerüchte/Trial-Balloons. Wissensbasis: 4 Konsolidate + `subgems/MMM_spec_v1.0.md`. Modi: `PF:REAL` / `:PT` / `:LITE` / `:CHECK`. v0.2: Rekonstruktions-Disziplin im `:PT`-Modus (Banner + `[REKONSTRUIERT]`-Flag). v0.3: AGGREGATION single-line + Delta-Header explizit + Layer-Disziplin Tool↔Web. v0.4: Trigger-Self-Widerspruchs-Sperre + Quellen-Format-Pflicht (URL/BT-Drs./BGBl.) + J-Veto-vs-J-Flag-Klärung + Banner-Position fest verankert. Strategie-Notiz im Vollwerk: `99_META/STRATEGIE_2026-06-04_provolution_org_observatorium.md`. |

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

## Gemini-10-Datei-Limit *(Stand 2026-05-11, Konvention konsolidiert)*

Gemini Gems erlauben **maximal 10 Wissens-Dateien pro Gem**. Die ursprüngliche PS-Wissensbasis hatte 11 Einzeldateien — beim ersten Setup fiel `05_Band5_Steuerung_und_Score.md` heraus *(unbemerkt)*, was Score-/Steuerungs-Fragen blind machte.

**Stufe 1 (2026-05-10):** Konsolidierung von **E11 + E12 + E13** in eine kombinierte Datei → 1 Slot frei für Band 5, 1 Reserve.

**Stufe 2 (2026-05-11):** Vollkonsolidierung aller 9 shared-Files in **4 thematische Konsolidate** *(siehe Upload-Tabelle oben)*. Verifiziert mit 8/8 Tests *(siehe `_GEM_DEPLOY_2026-05-11/PS_TEST_4FILES/00_DESCRIPTION.md`)*. Damit:

- **PS hat nur 4 Files** statt 9 → 6 Slots Reserve
- **Sub-Module können nun die volle Provolution-Wissensbasis tragen** *(4 Konsolidate + 1 Spec = 5 Files)* → 5 Slots Reserve
- Update-Aufwand pro Canon-Änderung: 1 Skript-Lauf statt 9 manuelle File-Replacements

### Konsolidate regenerieren *(automatisiert)*

Bei Canon-Änderungen an einem der Source-Files in `shared/`:

```bash
cd D:\Yoka\Workspace\Provolution-main
python _tools/regenerate_consolidated_kb.py
```

Output: 4 Files in `GEM_PROMPTS/knowledge_base/shared/_consolidated/` werden überschrieben *(Header mit Datum, Source-File-Liste, BEGIN/END-Markern)*. Original-Files in `shared/` bleiben unangetastet als Source of Truth.

Dann in Gemini: alte Konsolidate löschen, neue hochladen *(in jedem Gem, das das betroffene Konsolidat enthält)*.

**Mapping Source → Konsolidat:**
- `00_PS_FAMILIE_UND_ENGINE.md` ← `00_PS_Familie_Uebersicht.md` + `06_framework_extensions_v2.0_SECJ.md` + `07_extension_e0_mikro_makro_vorfilter_v1.0.md`
- `01a_BAENDE_THEORIE.md` ← `01_band1_sec_kanon.md` + `02_entscheidungskarte.md` + `03_band3_scientific_core.md`
- `01b_BAENDE_ANWENDUNG.md` ← `04_band4_anwendungen_v4.2_COMPLETE.md` + `05_band5_steuerung_und_score.md`
- `02_PROVOLUTION_EXTENSIONS.md` ← `08-10_extensions_applied_combined.md` *(bereits aus Stufe 1)*

**Original-Einzeldateien (00-07, 08-10)** bleiben als **Source of Truth** in `shared/` und parallel in `06_CANON/`-Strukturen. **Sie werden nicht mehr direkt zu Gemini hochgeladen** *(ersetzt durch Konsolidate)*, dienen aber als Referenz für die Regenerierung.

---

## Bekannte Baustellen

- **Re-Deployment in Gemini erforderlich (2026-05-11):** alle 6 Sub-Module + PS sind defensiv gepatcht (hardcoded Modul-Liste + R-Architektur-Reflex + PS-U:STANDARD/JUSTICE-Split in ABGRENZUNG). In Gemini-Gem-Editor jeweils komplette Anleitung ersetzen. Smoke-Test danach mit Architektur-Folgefrage *(„welche Module gibt es?")* — sollte mit Verweis auf README + 00_PS_Familie_Uebersicht antworten, nicht halluzinieren.
- **Hub-Datei `00_PS_Familie_Uebersicht.md` neu uploaden:** wurde 2026-05-11 auf v1.1 aktualisiert (PS-U 2.0 STANDARD/JUSTICE-Modi + PS-Entry + Versions-Spalte). Sie sollte in JEDEN Gem-Wissensbasis hochgeladen sein, damit R-Architektur-Reflex korrekt verweisen kann.
- **PV 2.0.2 Gem in Gemini** hat PN-Anleitung fälschlich drin → muss mit `PV_2.0.3.md` überschrieben werden (URGENT)
- **PT-Dopplung in Gemini:** zwei Temporalis-Gems (#1 türkis v1.0, #5 orange PT v1.0) — `PT_1.0.md` konsolidiert beide; erst anwenden, dann ggf. Dopplung löschen
- ✅ **E11 im lokalen Gem-Ordner ergänzt** (2026-04-18, Copy aus `06_CANON/08_extension_e11_hanf_universalanwendungen_v1.0.md`). **Echter Gem in Gemini** muss separat hochgeladen werden.
- ✅ **Canon-Korrekturen in Gem-Wissensdateien gespiegelt** (2026-04-18): Band 4 v4.2 Agentic-Restore + Dynamisierung beidseitig propagiert. Echte Gems in Gemini brauchen Re-Upload der Wissensdatei.
- ✅ **E0-Asymmetrie gefixt** (2026-04-19) — `07_extension_e0_mikro_makro_vorfilter_v1.0.md` war Spiegelungs-Lücke (nicht Absicht): Canon-Datei `06_framework_extensions_v1.0_SECJ.md` referenzierte sie formal gleichwertig zu E11/E12/E13, aber die Datei fehlte im Canon. Jetzt aus Gem-Ordner ins Canon kopiert, Extension-Reihenfolge vollständig (06/07/08/09/10 = Framework/E0/E11/E12/E13).
- ✅ **Encoding-Migration abgeschlossen** (2026-04-19) — Canon-Extensions 06/08/09/10 waren UTF-16 LE mit cp850-Mojibake, jetzt sauber UTF-8. Gem-Ordner-08 ebenfalls. Grep/Search/Diff funktioniert jetzt auf allen Extensions.

---

*Verwaltet in: `D:/Yoka/Workspace/Provolution-main/GEM_PROMPTS/`*
