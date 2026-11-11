# PS-Familie und SEC-J-Engine

**Konsolidiertes Wissensbasis-File für Gemini Gem-Upload**
**Zweck:** Hub + Bewertungs-Engine + Vorfilter — was alle Module brauchen
**Generiert:** 2026-05-11 via `_tools/regenerate_consolidated_kb.py`
**Quelle:** `GEM_PROMPTS/knowledge_base/shared/`

Enthält 3 Original-Datei(en) in dieser Reihenfolge:
- `00_PS_Familie_Uebersicht.md`
- `06_framework_extensions_v2.0_SECJ.md`
- `07_extension_e0_mikro_makro_vorfilter_v1.0.md`

> **Hinweis:** Direkte Edits in dieser Datei werden beim nächsten Lauf des Skripts überschrieben.
> **Source of Truth:** die Original-Dateien in `GEM_PROMPTS/knowledge_base/shared/` (gespiegelt aus `06_CANON/`).


================================================================================


<!-- BEGIN: 00_PS_Familie_Uebersicht.md -->

# PS-Familie – Kanonische Übersicht
## Probatio Systemica · Alle Module · Single Source of Truth
### CANON-Dokument · Version 1.1 · 2026-05-11
**Autor:** Tobias Yoka Dietz
**Status:** Kanonisch · peer-review-vorbereitet

**Änderungen 1.0 → 1.1 (Coding-Checker-Audit 2026-05-11):**
- PS (Entry-Modul) in Modulübersicht ergänzt
- PS-U 2.0 STANDARD/JUSTICE-Modi in Formeln + Veto-Logik integriert
- VFP-V4 Achsen-Erkennung dokumentiert
- Canon-Dateistruktur auf `06_framework_extensions_v2.0_SECJ.md` aktualisiert
- Versions-Spalte in Modulübersicht ergänzt

---

## 0. STRUKTURPRINZIP

Probatio Systemica (PS) ist ein modulares Framework. Jedes Modul
wendet die SEC-J-Logik auf einen anderen Prüfgegenstand an.
Alle Module teilen dieselbe mathematische Basis – sie unterscheiden
sich in Prüfobjekt, Gewichtung und Verdicts.

**Strikte Trennung:**
- **VFP (Vorfilter-Protokoll):** Eintrittscheck für alle Module.
  Klärt Einheit, Prüfbarkeit, Domäne. Immer aktiv.
- **MMM (Mikro-Makro-Matching):** Skalierungsprüfung.
  Ursprüngliche PS-Definition: prüft ob Logik auf Mikro genauso
  gilt wie auf Makro. In PV: aktiv bei n<3 ODER CL-2 ODER
  C_int-Kandidat. In PP: immer aktiv bei AT-1/2/3.
- **MMM ist Logik-Tool, kein Quellen-Tool.**

---

## 1. MODULÜBERSICHT

| Modul | Name | Version | Prüfobjekt | Kernfrage |
|---|---|---|---|---|
| **PS** | **Probatio Systemica** *(Entry)* | **4.0.1** | System / Entwurf / Strategie | E1–E8-Kaskade tragfähig? |
| PS-U:STANDARD | Probatio Systemica Universal | 2.0 | Maßnahme (Achsen 1–9) | Systemisch tragfähig? |
| PS-U:JUSTICE | Probatio Systemica Universal | 2.0 | Maßnahme (Achse 10) | Systemisch tragfähig + J-dominant geprüft? |
| PV | Probatio Veritatis | 2.0.3 | Faktischer Claim | Empirisch haltbar? |
| PD | Probatio Deliberativa | 1.0.1 | Politische Entscheidung | Prozessual SEC-J-konform? |
| PI | Probatio Institutionalis | 1.0.1 | Institution | Anspruch = Realität? |
| PN | Probatio Narrativa | 2.0.1 | Mediendiskurs | Wer spricht, wer fehlt? |
| PP | Probatio Philosophica | 1.0.1 | Philosophisches Argument | Logisch konsistent? |
| PT | Probatio Temporalis | 1.0.1 | Zeit / Score-Drift | Hat sich die Lage verändert? |

**Es gibt keine weiteren Sub-Module.** Insbesondere existieren **kein PE, kein PR, kein PJ**. Versions-Stand der Gem-Prompts: siehe `GEM_PROMPTS/README.md`.


---

## 2. FORMELN

```
PS:           Keine eigene Score-Formel — Entry-Auditor mit E1–E8-Kaskade
              (kritische Ebenen E1, E3, E6, E8 → bei ❌ sofort FALSIFIZIERT)

PS-U:STANDARD: SEC-J(m) = (0,30×S) + (0,25×E) + (0,30×C) + (0,15×J)
               (Default für Maßnahmen auf Achsen 1–9)

PS-U:JUSTICE:  SEC-J(m) = (0,25×S) + (0,15×E) + (0,20×C) + (0,40×J)    [NEU 2.0]
               (Auto-aktiviert wenn VFP-V4 Achse 10 als Primär erkennt)

PV:   PV(c)   = (0,30×S) + (0,20×E) + (0,20×C_ext) + (0,15×C_int) + (0,15×J)
      C gesamt = 0,35 (aufgespalten: C_ext=0,20 + C_int=0,15)

PD:   PD(d)   = (0,30×S) + (0,20×E) + (0,25×C) + (0,25×J)

PI:   PI(i)   = (0,30×S) + (0,20×E) + (0,25×C) + (0,25×J)

PN:   PN(n)   = (0,20×S) + (0,15×E) + (0,25×C) + (0,40×J)

PP:   PP(a)   = (0,25×S) + (0,25×E) + (0,35×C) + (0,15×J)

PT:   Keine eigene Formel – orchestriert andere Module über Zeit
      Drift: Delta(t0->tn) = Score(tn) - Score(t0)
```

**VFP-V4 Achsen-Erkennung (NEU 2026-05-10, durch PS und PS-U genutzt):**
- Achsen 1–9 (Wasser, Energie, Nahrung, Wohnen, Gesundheit, Mobilität, Bildung, Information, Kultur) → PS-U:STANDARD
- Achse 10 (Gerechtigkeit) → PS-U:JUSTICE (J-dominant, J<0,50 Hard-Stop, Antifragility-Prinzip)

---

## 3. GEWICHTUNGSLOGIK

| Modul | S | E | C | J | Dominante Dim. |
|---|---|---|---|---|---|
| PS | – | – | – | – | Kaskade E1–E8 (keine Score-Aggregation) |
| PS-U:STANDARD | 0,30 | 0,25 | 0,30 | 0,15 | S/C gleichwertig |
| PS-U:JUSTICE | 0,25 | 0,15 | 0,20 | **0,40** | **J dominant** (Achse 10) |
| PV | 0,30 | 0,20 | 0,35* | 0,15 | C dominant |
| PD | 0,30 | 0,20 | 0,25 | 0,25 | S führend, J/C paritätisch |
| PI | 0,30 | 0,20 | 0,25 | 0,25 | S führend, J/C paritätisch |
| PN | 0,20 | 0,15 | 0,25 | 0,40 | J dominant |
| PP | 0,25 | 0,25 | 0,35 | 0,15 | C dominant |
| PT | – | – | – | – | Delta (Drift) |

*PV: C = C_ext (0,20) + C_int (0,15)

---

## 4. VETO-LOGIK

| Modul | Veto-Bedingung | Konsequenz |
|---|---|---|
| PS | ❌ in kritischer Ebene (E1/E3/E6/E8) | FALSIFIZIERT (sofort, Kaskade-Abbruch) |
| PS-U:STANDARD | J < 0,40 | Flag: SOZIALE INKONSISTENZ *(NEU 2.0)* |
| PS-U:STANDARD | S/E/C < 0,40 | Flag: UNZUREICHEND / INEFFIZIENT / STRUKTURELLER WIDERSPRUCH |
| PS-U:JUSTICE | J < 0,50 | **J-VETO HARD STOP** *(NEU 2.0, Antifragility-Prinzip)* |
| PS-U:JUSTICE | J 0,50–0,59 | Flag: JUSTICE-MARGINAL |
| PV | C_ext < 0,50 | FALSE (automatisch) |
| PV | C_int = 0 | FALSE (Logik-Unmöglichkeit) |
| PV | J < 0,40 | Flag: HARMFUL FRAMING |
| PV | CANON_CONFLICT | Flag: PT-Übergabe |
| PD | C < 0,40 | Flag: STRUKTURELLER WIDERSPRUCH |
| PD | J < 0,40 | Flag: DEMOKRATIEDEFIZIT |
| PI | C < 0,40 | Flag: STRUKTURELLE INKONSISTENZ |
| PI | J < 0,40 | Flag: EXKLUSIONSRISIKO |
| PN | C < 0,40 | Flag: DISKURSINKONSISTENZ |
| PN | J < 0,40 | Flag: STRUKTURELLE AUSBLENDUNG |
| PP | Performativer Widerspruch | INKOHÄRENT (Veto, sofort) |
| PP | C_ext < 0,40 | Flag: TRADITIONSWIDERSPRUCH |
| PP | J < 0,40 | Flag: PERSPEKTIVMANGEL |
| PT | Volatilität > ±0,20 | Flag: INSTABIL |

**Veto-Transparenz-Regel:** Wenn Veto aktiv bei Score > 0,50:
VETO-GRUND + SCORE-HINWEIS ausgeben.
Veto-Logik hat immer Vorrang vor mathematischer Aggregation.


---

## 5. VERDICT-SYSTEME

### PV
| Score | Verdict | Plain (DE) |
|---|---|---|
| >= 0,80 | VERIFIED | BESTÄTIGT |
| 0,50-0,79 | UNCERTAIN | UNSICHER |
| 0,20-0,49 | FALSE | FALSCH |
| < 0,20 | FABRICATED | HALTLOS |
| Sonder | UNSUBSTANTIATED | UNBELEGT |

### PD
| Score | Verdict | Plain (DE) |
|---|---|---|
| >= 0,80 | KONFORM | ORDNUNGSGEMÄSS |
| 0,60-0,79 | BEDINGT KONFORM | MIT MÄNGELN |
| 0,40-0,59 | DEFIZITÄR | ERHEBLICH MANGELHAFT |
| < 0,40 | NICHT KONFORM | NICHT ORDNUNGSGEMÄSS |

### PI
| Score | Verdict | Plain (DE) |
|---|---|---|
| >= 0,80 | INTEGER | GLAUBWÜRDIG |
| 0,60-0,79 | BEDINGT INTEGER | BEDINGT GLAUBWÜRDIG |
| 0,40-0,59 | DEFIZITÄR | GROSSE LÜCKEN |
| < 0,40 | NICHT INTEGER | NICHT GLAUBWÜRDIG |

### PN
| Score | Profil | Plain (DE) |
|---|---|---|
| >= 0,75 | AUSGEWOGEN | AUSGEWOGEN |
| 0,55-0,74 | EINSEITIG | EINSEITIG |
| 0,35-0,54 | STARK VERZERRT | STARK EINSEITIG |
| < 0,35 | PROPAGANDISTISCH | IRREFÜHREND |

### PP
| Score | Verdict | Plain (DE) |
|---|---|---|
| >= 0,80 | KOHÄRENT | IN SICH STIMMIG |
| 0,60-0,79 | BEDINGT KOHÄRENT | ÜBERWIEGEND STIMMIG |
| 0,40-0,59 | KONTROVERS | WIDERSPRÜCHLICH |
| < 0,40 | INKOHÄRENT | IN SICH WIDERSPRÜCHLICH |

### PT
| Drift | Trend-Status | Plain (DE) |
|---|---|---|
| Delta > +0,15 | EMERGING | IN ENTWICKLUNG |
| Delta nahe Schwelle | CONVERGING | KURZ VOR ÄNDERUNG |
| Delta ±0,05 | STABLE | STABIL |
| Delta < -0,15 | DECLINING | VERSCHLECHTERT SICH |
| Verdictänderung | REVERSED | GEÄNDERT |
| Volatilität >±0,20 | INSTABIL | NOCH UNKLAR |


---

## 6. MODULKOPPLUNG

```
PV  --UNSUBSTANTIATED/CANON_CONFLICT-->  PT
PD  --STRUKTURELLER WIDERSPRUCH------->  PT
PI  --STRUKTURELLE INKONSISTENZ------->  PT
PN  --STRUKTURELLE AUSBLENDUNG-------->  PT
PP  --KONTROVERS/INKOHÄRENT----------->  PT
PT  --Kanonrevisions-Empfehlung------>  CANON (manuell bestätigt)

PV  --V0 Typ B/C------------------->  PP (philosophische Ebene)
PD  --normative Begründung----------->  PP
PI  --Leitbild-Kohärenz-------------->  PP
```

---

## 7. SYSTEMSTABILISIERUNGS-REGELN (KANONISCH)

**S1 – MMM ist Logik-Tool:**
MMM aktivieren bei: n<3 ODER CL-2 (kausal) ODER C_int-Kandidat.
NICHT: MMM inaktiv nur weil n>=3.

**S2 – Veto-Transparenz:**
Veto bei Score > 0,50 → VETO-GRUND + SCORE-HINWEIS Pflicht.

**S3 – C_int vs. C_ext Trennung:**
Skalenbruch (MMM) → immer C_int, nie C_ext.
C_int = deduktiv. C_ext = induktiv (Quellen nötig).

**S4 – PT empfiehlt, nie entscheidet:**
Alle Kanonrevisionen erfordern manuelle Bestätigung durch Yoka.

**S5 – PP ist kein Ethik-Schiedsrichter:**
PP urteilt nicht welche Ethik-Tradition richtig liegt.
PP prüft ob ein Argument die eigenen Regeln einhält.

---

## 8. ABGRENZUNGSREGEL (KANONISCH)

> "PS-U bewertet ob eine Maßnahme systemisch tragfähig ist.
> PV bewertet ob Behauptungen darüber faktisch haltbar sind.
> PD bewertet ob die Entscheidung dafür SEC-J-konform getroffen wurde.
> PI bewertet ob die Institution, die sie umsetzt, ihren Anspruch erfüllt.
> PN bewertet ob der Diskurs darüber alle Perspektiven abbildet.
> PP bewertet ob die philosophische Begründung dahinter konsistent ist.
> PT bewertet ob sich die Wahrheitslage über Zeit verändert hat."

---

## 9. CANON-DATEISTRUKTUR

| Datei | Modul |
|---|---|
| 00_PS_Familie_Uebersicht.md | Übersicht (dieses Dokument) |
| 01_Band1_SEC_Kanon.md | PS Grundlagen |
| 02_Entscheidungskarte.md | Band 2 |
| 03_Band3_Scientific_Core.md | Band 3 |
| 04_Band4_Anwendungen_v4.2.md | Provolution |
| 05_Band5_Steuerung_Score.md | Band 5 |
| **06_framework_extensions_v2.0_SECJ.md** | **PS-U 2.0 (STANDARD + JUSTICE)** *(seit 2026-05-10)* |
| 07_Probatio_Veritatis_v2.0.md | PV v2.0 |
| 11_Probatio_Deliberativa_v1.0.md | PD |
| 12_Probatio_Institutionalis_v1.0.md | PI |
| 13_Probatio_Narrativa_v1.0.md | PN |
| 14_Probatio_Philosophica_v1.0.md | PP |
| 15_Probatio_Temporalis_v1.0.md | PT |

**Gem-Prompts (in `GEM_PROMPTS/`-Verzeichnis, nicht im Canon — Copy-Paste-Quelle für Gemini-Editor):**
`PS_4.0.1.md` · `PV_2.0.3.md` · `PD_1.0.1.md` · `PI_1.0.1.md` · `PN_2.0.1.md` · `PP_1.0.1.md` · `PT_1.0.1.md`

---

## LICENSE

CC0 1.0 Universal + Open Humanity License. See LICENSE.md.

---

*CANON-Referenz: 00_PS_Familie_Uebersicht.md · Version 1.0 · 2026-04-09*
*Tobias Yoka Dietz · Single Source of Truth für alle PS-Module*

<!-- END: 00_PS_Familie_Uebersicht.md -->


================================================================================


<!-- BEGIN: 06_framework_extensions_v2.0_SECJ.md -->

# PS-U 2.0 · Provolution Framework Extension · SEC-J Canonical

**Status:** **Canonical** — aufgenommen ins Provolution-Canon 2026-05-10
**Stand:** 2026-05-10
**Vorgänger:** `06_framework_extensions_v1.0_SECJ.md` *(PS-U 1.x, J=0,15, keine J-Veto-Flag)*
**Anlass:** J-Audit 2026-05-10 — PS-U erkennt Ungerechtigkeit nur schwach im STANDARD-Modus + fehlt J-Modus für Achse-10-Maßnahmen

---

## §1 · Identität

**PS-U** *(Probatio Systemica Universal)* ist die framework-neutrale SEC-J-Bewertungs-Engine. Sie prüft eine Maßnahme oder ein System auf systemische Tragfähigkeit.

PS-U ist **nicht** an Provolution gebunden — sie ist universelle SEC-J-Anwendung, einsetzbar in jedem Kontext, der die SEC-J-Methodik adoptiert.

---

## §2 · Modi

PS-U 2.0 hat zwei methodisch unterschiedliche Modi:

| Modus | Aktivierung | Anwendungsfall |
|---|---|---|
| **PS-U:STANDARD** | Default | Maßnahmen auf Achsen 1–9 *(Wasser, Energie, …, Kultur)* |
| **PS-U:JUSTICE** | Achse 10 *(Gerechtigkeit)* primär | Maßnahmen, deren primäres Ziel Gerechtigkeit ist |

Aktivierung über zwei Pfade:

1. **Auto-Aktivierung:** im VFP-V4-Schritt erkennt das System die Primär-Achse. Achse 10 → JUSTICE-Modus. Achsen 1–9 → STANDARD.
2. **Manuell:** `PS-U:JUSTICE` oder `PS-U:STANDARD` als expliziter Modus-Aufruf, überschreibt Auto-Aktivierung.

---

## §3 · PS-U:STANDARD

### Formel

```
SEC-J(m) = (0,30 · S) + (0,25 · E) + (0,30 · C) + (0,15 · J)
```

| Dimension | Gewicht | Bedeutung |
|---|---|---|
| S | 0,30 | Sufficient — wirkt die Maßnahme hinreichend? |
| E | 0,25 | Efficient — ressourcen-effizient? |
| C | 0,30 | Consistent — kohärent mit anderen Maßnahmen + Skalen-invariant? |
| J | 0,15 | Just — gerechtigkeits-konform? |

### Veto- und Flag-Logik

```
S < 0,40   →  Flag UNZUREICHEND (Pflicht-Hinweis, kein Stop)
E < 0,40   →  Flag INEFFIZIENT (Pflicht-Hinweis, kein Stop)
C < 0,40   →  Flag STRUKTURELLER WIDERSPRUCH (Pflicht-Hinweis, kein Stop)
J < 0,40   →  Flag SOZIALE INKONSISTENZ (Pflicht-Hinweis + Empfehlung)   *** NEU in 2.0 ***
```

**Begründung der neuen J-Flag:** in PS-U 1.x fehlte die J-Veto-Flag, was Maßnahmen mit niedrigem J-Score einen unsichtbaren Pass gab, solange S/E/C hoch waren. Die SOZIALE-INKONSISTENZ-Flag schließt diese Lücke.

### Verdict-Schwellen *(unverändert gegenüber 1.x)*

| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | TRAGFÄHIG | TRAGFÄHIG |
| 0,60–0,79 | BEDINGT TRAGFÄHIG | TEILWEISE TRAGFÄHIG |
| 0,40–0,59 | DEFIZITÄR | NICHT TRAGFÄHIG |
| < 0,40 | NICHT TRAGFÄHIG | NICHT TRAGFÄHIG |

---

## §4 · PS-U:JUSTICE

### Formel *(neu)*

```
SEC-J(m, justice) = (0,25 · S) + (0,15 · E) + (0,20 · C) + (0,40 · J)
```

| Dimension | Gewicht | Bedeutung |
|---|---|---|
| S | 0,25 | Sufficient |
| E | 0,15 | Efficient |
| C | 0,20 | Consistent |
| J | **0,40** | Just — **dominant** |

### Begründung der J-Dominanz

Maßnahmen auf Achse 10 *(Gerechtigkeit)* haben Justice als **primären Zweck**, nicht als Eigenschaft. Eine Reparations-Maßnahme, die ressourcen-effizient ist, aber die Reparation falsch verteilt, verfehlt ihren Zweck — daher J=0,40 dominant.

Analog zu PN *(Probatio Narrativa, J=0,40)*, weil Mediendiskurs auch primär gerechtigkeits-distributiv-relevant ist.

### Veto- und Flag-Logik *(strenger als STANDARD)*

```
J < 0,50  →  J-VETO HARD STOP  (Antifragility-Prinzip)
              Maßnahme blockiert, Score wird zwar angezeigt, aber Verdict = J-VETO
              Hinweis: warum geblockt + Empfehlung zur Korrektur

J 0,50–0,59  →  Flag JUSTICE-MARGINAL
                  Empfehlung zur Verstärkung der J-Wirkung

J ≥ 0,60  →  Pass (kein Flag)

C < 0,40   →  Flag STRUKTURELLER WIDERSPRUCH (wie STANDARD)
S < 0,40   →  Flag UNZUREICHEND (wie STANDARD)
E < 0,40   →  Flag INEFFIZIENT (wie STANDARD)
```

**Begründung der J<0,50-Hard-Stop-Schwelle:** das Antifragility-Prinzip *(siehe `06_CANON/ANTIFRAGILITY_PRINCIPLE.md`)* legt J<0,50 als hartes Veto fest. PS-U:STANDARD nutzt eine weichere J<0,40-Flag, weil Justice dort Bewertungs-Filter ist; PS-U:JUSTICE setzt die Antifragility-Schwelle als Hard-Stop, weil hier Justice der Zweck ist.

### Verdict-Schwellen *(JUSTICE-Modus)*

| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | JUSTICE-TRAGFÄHIG | GERECHT WIRKSAM |
| 0,60–0,79 | BEDINGT JUSTICE-TRAGFÄHIG | TEILWEISE GERECHT |
| 0,40–0,59 | DEFIZITÄR | UNZUREICHEND GERECHT |
| < 0,40 oder J<0,50 | J-VETO | NICHT GERECHT |

---

## §5 · VFP-V4 Achsen-Erkennung *(neu)*

Erweiterung des Vorfilter-Protokolls um eine Achsen-Zuordnung.

```
[VFP V4] Achsen-Zuordnung

Frage 1: Auf welcher Achse sitzt die geprüfte Maßnahme primär?
  Optionen:
    1. Wasser           (Cluster I · Physisches Substrat)
    2. Energie          (Cluster I)
    3. Nahrung          (Cluster I)
    4. Wohnen           (Cluster II · Lebens-Räume)
    5. Gesundheit       (Cluster II)
    6. Mobilität        (Cluster II)
    7. Bildung          (Cluster III · Wissen & Bedeutung)
    8. Information      (Cluster III)
    9. Kultur           (Cluster III)
    10. Gerechtigkeit   (Cluster IV · Soziales Substrat)

Frage 2: Sekundär-Achsen (optional)?
  Liste weiterer betroffener Achsen.

Modus-Auto-Aktivierung:
  Primär = Achsen 1–9    →  PS-U:STANDARD
  Primär = Achse 10      →  PS-U:JUSTICE

Manueller Override:
  `PS-U:STANDARD` oder `PS-U:JUSTICE` überschreibt VFP-V4-Auto-Erkennung.
```

### VFP-Artefakt *(erweitert)*

```
[VFP-ARTEFAKT]
Eingangstyp     : ST-[1/2/3/4]
Primär-Achse    : [1–10] · [Achsen-Name] · [Cluster I/II/III/IV]
Sekundär-Achsen : [Liste]
Aktiver Modus   : PS-U:STANDARD | PS-U:JUSTICE
Modus-Quelle    : VFP-V4-Auto | Manueller Override
VFP-Status      : PASS | BLOCK
```

---

## §6 · Output-Format

### PS-U:FULL *(Vollständiger Begründungspfad)*

Reihenfolge wie etablierte Sub-Gem-Konvention: Fazit zuerst, Details darunter.

```
PS-U-REPORT v2.0 · [Datum] · ID: [UUID]

════════════════════════════════════════════
FAZIT
════════════════════════════════════════════

MAßNAHME: "[Originaltext]"
MODUS: PS-U:[STANDARD|JUSTICE]
PRIMÄR-ACHSE: [Achsen-Name]

VERDICT: [TRAGFÄHIG / BEDINGT TRAGFÄHIG / DEFIZITÄR / NICHT TRAGFÄHIG / J-VETO]
SCORE: [x]
[Flags: SOZIALE INKONSISTENZ | JUSTICE-MARGINAL | STRUKTURELLER WIDERSPRUCH | …]

KERN: [1-2 Sätze]

════════════════════════════════════════════
DETAILS
════════════════════════════════════════════

[VFP-ARTEFAKT]
SCORES:
  S = [x]  ·  E = [x]  ·  C = [x]  ·  J = [x]

AGGREGATION:
  STANDARD: 0,30·S + 0,25·E + 0,30·C + 0,15·J = [x]
  JUSTICE:  0,25·S + 0,15·E + 0,20·C + 0,40·J = [x]

BEGRÜNDUNG:
  S: [...]
  E: [...]
  C: [...]
  J: [...]

[Falls J-VETO:
J-VETO-BEGRÜNDUNG:
  J = [x] < 0,50 (JUSTICE-Modus, Antifragility-Prinzip)
  Korrektur-Empfehlung: [konkret]
]

EMPFEHLUNGEN: [...]
QUELLEN: [...]
EINSCHRÄNKUNGEN: [...]

────────────────────────────────────────────
Weitere Modi: `PS-U:FULL` · `PS-U:LITE` · `PS-U:PLAIN` · `PS-U:STANDARD` · `PS-U:JUSTICE` · `PS-U:J` · `PS-U:VFP` · `PS-U:STATUS`
```

### Weitere Modi

- `PS-U:LITE` — Verdict + 1 Satz
- `PS-U:PLAIN` — Laiensprache, max. 250 Wörter
- `PS-U:J` — nur J-Analyse
- `PS-U:VFP` — nur VFP-Artefakt *(inkl. neuem V4)*
- `PS-U:STATUS` — Prüfstand
- `PS-U:STANDARD` — manueller Standard-Override
- `PS-U:JUSTICE` — manueller Justice-Override

---

## §7 · Verhaltensregeln *(unverändert + ergänzt)*

Bestehende Verhaltensregeln aus PS-U 1.x bleiben gültig. **Neu:**

- **R-NEU-1:** VFP-V4 ist Pflicht — kein SEC-J ohne Achsen-Zuordnung
- **R-NEU-2:** SOZIALE-INKONSISTENZ-Flag *(STANDARD-Modus, J<0,40)* ist Pflicht-Hinweis, auch bei hohem Gesamt-Score
- **R-NEU-3:** J-VETO-Hard-Stop im JUSTICE-Modus ist nicht verhandelbar — Score-Anzeige ohne Verdict-Pass
- **R-NEU-4:** Modus-Wechsel transparent dokumentieren — wenn manueller Override, im Output ausweisen

---

## §8 · Bezug zu anderen Modulen

| Modul | Beziehung |
|---|---|
| **PS** *(Entry-Gem)* | routet zu PS-U bei framework-neutralen Maßnahmen-Tragfähigkeits-Fragen. Routing-Tabelle erweitern: bei Achse-10-Erkennung explizit `PS-U:JUSTICE` empfehlen |
| **PV** | bei faktischen Behauptungen über Justice-Wirkung *(distributive Aussagen)* — Veritatis prüft Wahrheits-Anspruch |
| **PD** | bei Politik-Entscheidungen, deren Inhalt Justice-relevant ist — PD prüft den Prozess |
| **PI** | bei Institutionen, die Justice umsetzen — PI prüft Institutional-Anspruch vs. Realität |
| **PN** | bei Mediendiskurs zu Justice-Themen — PN prüft Diskurs-Verteilung |
| **PP** | bei normativen Argumenten zu Justice — PP prüft Kohärenz |
| **PT** | bei Justice-Drift über Zeit |

---

## §9 · Migrations-Pfad

### Phase 1 *(diese Woche)*

- Diese Spec wird ins Canon migriert *(Vorschlag: `06_CANON/06_framework_extensions_v2.0_SECJ.md`)*
- Erste Test-Anwendung mit konkreter Achse-10-Maßnahme *(z. B. „Bürger:innen-Rat mit Veto-Recht für Klima-Politik")*

### Phase 2 *(diese Woche oder nächste)*

- PS-Entry-Gem-Prompt *(`PS_3.0.md`)* wird zu **PS_4.0.md** aktualisiert:
  - Routing-Tabelle erweitert: Achse-10-Erkennung → `PS-U:JUSTICE`-Verweis
  - Modus-Hinweis im Quick-Start
- **Kein Update der Sub-Module *(PV/PD/PI/PN/PP/PT)*** — sie funktionieren unverändert

### Phase 3 *(post-NLnet, optional)*

- Prüfen, ob PS-U:JUSTICE in der Praxis ausreichend trennt
- Falls nicht: **PJ — Probatio Justitiae** als eigenständiges 7. Sub-Modul ausgliedern

---

## §10 · Falsifikations-Klausel auf diese Spec selbst

Diese Spec ist falsifizierbar:

- Wenn die JUSTICE-Modus-Gewichtung in der Praxis Justice-Maßnahmen falsch bewertet → Spec wird revidiert
- Wenn die J<0,50-Hard-Stop-Schwelle zu streng/zu lax ist → Schwelle wird angepasst
- Wenn die Achsen-Erkennung im VFP-V4 unsauber funktioniert → Mechanismus wird verbessert
- Wenn die SOZIALE-INKONSISTENZ-Flag im STANDARD-Modus zu viele False-Positives produziert → Schwelle wird justiert

Revisionen werden in der Versionierung dokumentiert.

---

## §11 · Versionierung

| Version | Datum | Änderungen |
|---|---|---|
| 1.x | bis 2026-05-09 | PS-U mit J=0,15, keine J-Veto-Flag, kein JUSTICE-Modus |
| **2.0** | **2026-05-10 *(Draft)*** | STANDARD-Modus mit J<0,40-Flag SOZIALE INKONSISTENZ; neuer JUSTICE-Modus mit J=0,40 + J<0,50-Hard-Stop; VFP-V4 Achsen-Erkennung |

---

**Ende der Spec.**

*Migriert ins Canon: 2026-05-10. Yoka-Approval erteilt. Spec ersetzt PS-U 1.x.*

<!-- END: 06_framework_extensions_v2.0_SECJ.md -->


================================================================================


<!-- BEGIN: 07_extension_e0_mikro_makro_vorfilter_v1.0.md -->

# EXTENSION E0: MIKRO-MAKRO-MASCHINE (VORFILTER)

**Version:** 1.0
**Datum:** 2026-02-04
**Status:** KANONISCH
**Priorität:** HÖCHSTE (vorgeschaltet vor SEC)
**Ursprung:** Entwickelt vor Probatio Systemica, chronologisch älteste Komponente

---

## ZUSAMMENFASSUNG

Die **Mikro-Makro-Maschine** ist der obligatorische **Vorfilter** für alle Klimamaßnahmen, bevor diese in die SEC-Bewertung (Sufficient-Efficient-Consistent) eingehen. Sie prüft, ob eine Maßnahme auf beiden fundamentalen Analyse-Ebenen überhaupt funktioniert.

**Kernprinzip:** Fällt eine Maßnahme bereits bei der Mikro-Makro-Prüfung durch, wird keine SEC-Bewertung durchgeführt → Ressourcenersparnis.

---

## 1. SYSTEMARCHITEKTUR

### 1.1 Position im Provolution-Workflow

```
EINGABE (Klimamaßnahme/Konzept)
              ↓
┌─────────────────────────────────────┐
│  STUFE 0: MIKRO-MAKRO-PRÜFUNG       │
│  ├── Mikroebene (konkrete Wirkung)  │
│  ├── Makroebene (systemische Wirk.) │
│  └── 14 Bewertungskriterien         │
└─────────────────────────────────────┘
              ↓
         BESTANDEN?
         ├── NEIN → ABGELEHNT (Begründung)
         │          Keine weitere Prüfung
         └── JA ↓
┌─────────────────────────────────────┐
│  STUFE 1: SEC-PRÜFUNG               │
│  ├── Sufficient (S ≥ 0.6)           │
│  ├── Efficient (E ≥ 0.5)            │
│  └── Consistent (C ≥ 0.7)           │
└─────────────────────────────────────┘
              ↓
         SEC-SCORE → Aufnahme ins Framework
```

### 1.2 Begründung der Vorschaltung

| Aspekt | Ohne Vorfilter | Mit Vorfilter |
|--------|----------------|---------------|
| Rechenaufwand | SEC für ALLE Maßnahmen | SEC nur für vorgeprüfte |
| Qualität | Viele Fehlbewertungen | Saubere Eingabe |
| Effizienz | Niedrig | Hoch |
| Fehlervermeidung | Systemisch unpassende Maßnahmen können hohe SEC-Scores bekommen | Vorab gefiltert |

---

## 2. MIKROEBENE

### 2.1 Definition

Die **Mikroebene** analysiert die **konkrete, lokale, unmittelbare Wirkung** einer Einzelmaßnahme.

### 2.2 Prüfdimensionen

| Dimension | Prüffrage | Beispiel |
|-----------|-----------|----------|
| **Ressourcen** | Welche Inputs werden benötigt? | Material, Energie, Arbeit |
| **Emissionen** | Welche direkten Outputs entstehen? | CO₂, Abfall, Wärme |
| **Kosten** | Was kostet eine Einzelinstanz? | €/Einheit, Zeitaufwand |
| **Wirkung** | Was bewirkt eine Einzelinstanz? | kg CO₂ gespart, kWh erzeugt |
| **Risiken** | Welche lokalen Risiken bestehen? | Unfälle, Fehlfunktionen |
| **Reversibilität** | Ist die Maßnahme rückgängig machbar? | Ja/Nein/Teilweise |

### 2.3 Mikro-Prüflogik

```
MIKRO_PASS = TRUE wenn:
  (1) Wirkung > 0 (messbar positiv)
  UND (2) Ressourcen verfügbar
  UND (3) Kosten ≤ akzeptabler Schwellenwert
  UND (4) Risiken beherrschbar
```

**Mikro-Durchfallgründe:**
- Keine messbare positive Wirkung
- Benötigte Ressourcen nicht verfügbar
- Kosten prohibitiv hoch
- Unkontrollierbare lokale Risiken

---

## 3. MAKROEBENE

### 3.1 Definition

Die **Makroebene** analysiert die **systemische, strukturelle, langfristige Einbettung** einer Maßnahme.

### 3.2 Prüfdimensionen

| Dimension | Prüffrage | Beispiel |
|-----------|-----------|----------|
| **Systemkompatibilität** | Passt es ins bestehende System? | Energienetz, Marktstruktur |
| **Kulturelle Akzeptanz** | Wird es gesellschaftlich akzeptiert? | Verhaltensänderung nötig? |
| **Politische Machbarkeit** | Gibt es regulatorische Hürden? | Gesetze, Genehmigungen |
| **Marktdynamik** | Wie reagiert der Markt? | Verdrängung, Konkurrenz |
| **Infrastruktur** | Welche Infrastruktur wird benötigt? | Netze, Logistik, Ausbildung |
| **Wechselwirkungen** | Welche anderen Systeme werden beeinflusst? | Kaskaden, Nebeneffekte |

### 3.3 Makro-Prüflogik

```
MAKRO_PASS = TRUE wenn:
  (1) Systemkompatibilität gegeben ODER Umbau realistisch
  UND (2) Kulturelle Barrieren überwindbar
  UND (3) Politische Machbarkeit ≥ 50%
  UND (4) Infrastruktur vorhanden ODER aufbaubar
  UND (5) Wechselwirkungen beherrschbar
```

**Makro-Durchfallgründe:**
- Fundamentaler Systemkonflikt (z.B. widerspricht Grundinfrastruktur)
- Kulturelle Unüberwindbarkeit (z.B. erfordert unrealistische Verhaltensänderung)
- Politisch blockiert ohne Aussicht auf Änderung
- Infrastruktur nicht herstellbar in relevantem Zeitraum
- Unkontrollierbare negative Kaskaden

---

## 4. DIE 14 BEWERTUNGSKRITERIEN

### 4.1 Herkunft

Diese Kriterien wurden in der ursprünglichen Mikro-Makro-Maschine entwickelt und sind **domänenunabhängig** anwendbar.

### 4.2 Kriterienliste

| Nr | Kriterium | Ebene | Beschreibung |
|----|-----------|-------|--------------|
| 1 | **Wirkungsklarheit** | Mikro | Ist die Wirkung eindeutig messbar? |
| 2 | **Ressourcenverfügbarkeit** | Mikro | Sind benötigte Ressourcen zugänglich? |
| 3 | **Kosteneffizienz** | Mikro | Verhältnis Kosten zu Wirkung |
| 4 | **Risikokontrolle** | Mikro | Sind Risiken beherrschbar? |
| 5 | **Reversibilität** | Mikro | Kann die Maßnahme rückgängig gemacht werden? |
| 6 | **Vorhersehbarkeit** | Mikro | Ist das Ergebnis vorhersagbar? |
| 7 | **Systemkompatibilität** | Makro | Passt es ins bestehende System? |
| 8 | **Kulturelle Akzeptanz** | Makro | Gesellschaftliche Bereitschaft |
| 9 | **Politische Machbarkeit** | Makro | Regulatorische Umsetzbarkeit |
| 10 | **Infrastrukturabhängigkeit** | Makro | Welche Infrastruktur wird benötigt? |
| 11 | **Wechselwirkungen** | Makro | Interaktion mit anderen Systemen |
| 12 | **Skalierbarkeit** | Beide | Funktioniert es bei Massenanwendung? |
| 13 | **Zeitrahmen** | Beide | Wann tritt Wirkung ein? |
| 14 | **Prävention** | Beide | Verhindert es künftige Probleme? |

### 4.3 Bewertungsskala

Jedes Kriterium wird auf einer Skala von **0-3** bewertet:

| Wert | Bedeutung |
|------|-----------|
| 0 | Nicht erfüllt / Durchfall |
| 1 | Schwach erfüllt / Nachbesserung nötig |
| 2 | Ausreichend erfüllt |
| 3 | Vollständig erfüllt |

### 4.4 Durchfallschwellen

```
MIKRO-MAKRO_PASS = TRUE wenn:
  (1) Kein Kriterium = 0 (hartes Durchfallen)
  UND (2) Durchschnitt aller Kriterien ≥ 1.5
  UND (3) Mikro-Durchschnitt ≥ 1.5
  UND (4) Makro-Durchschnitt ≥ 1.5
```

---

## 5. BETRIEBSMODI

### 5.1 Auto-Modus (Standard)

Das System entscheidet automatisch über die Prüftiefe basierend auf:
- Komplexität der Maßnahme
- Erkannte Risikoindikatoren
- Verfügbare Informationen

### 5.2 Voll-Modus (MM:FULL)

Aktiviert durch: `MM:FULL` oder `Mikro-Makro-Vollprüfung`

- Alle 14 Kriterien werden explizit bewertet
- Detaillierte Begründung für jedes Kriterium
- Warnmatrix für Grenzfälle
- Explizite Empfehlung

### 5.3 Lite-Modus (MM:LITE)

Aktiviert durch: `MM:LITE` oder `Mikro-Makro-Schnellprüfung`

- Nur kritische Kriterien (1, 4, 7, 11, 12)
- Kurzurteil: PASS/FAIL/UNSICHER
- Maximal 5 Zeilen Begründung

---

## 6. PHASENMODELL

### 6.1 Phase S (Start)

**Erstanalyse** bei jeder neuen Maßnahme:
- IST-Zustand erfassen
- SOLL-Zustand definieren
- Erste Mikro-Makro-Einschätzung
- Warnungen identifizieren

### 6.2 Phase A (Analyse)

**Vertiefung** ohne neuen Full-Scan:
- Diskussion offener Fragen
- Nachrecherche zu Unsicherheiten
- Iteration der Bewertung

### 6.3 Phase B (Bewertung)

**Neuer vollständiger Scan** nur auf expliziten Befehl:
- `Starte Mikro-Makro-Prüfung` oder `MM:AN`
- Komplette Neubewertung aller 14 Kriterien
- Finales Urteil: PASS/FAIL

---

## 7. AKTIVIERUNGSBEFEHLE

| Befehl | Funktion |
|--------|----------|
| `MM:AN` | Starte Mikro-Makro-Analyse (Auto-Modus) |
| `MM:FULL` | Starte Vollprüfung (alle 14 Kriterien) |
| `MM:LITE` | Starte Schnellprüfung (5 kritische Kriterien) |
| `MM:EX` | Erkläre Mikro-Makro-Logik an diesem Beispiel |
| `MM:STATUS` | Zeige aktuellen Prüfstatus |

---

## 8. INTEGRATION IN PROVOLUTION

### 8.1 Änderungen an bestehenden Dokumenten

**Band 1 (Grundlagen):**
- Kapitel 2: Ergänze "Stufe 0: Mikro-Makro-Vorfilter" vor SEC-Definition
- Axiom 0 (neu): "Keine SEC-Bewertung ohne Mikro-Makro-PASS"

**Band 3 (Mathematische Grundlagen):**
- Kapitel 2: Ergänze formale Definition der 14 Kriterien
- Appendix: Mikro-Makro-Prüfmatrix

**Band 4 (Anwendungen):**
- Jede Anwendung erhält Abschnitt "Mikro-Makro-Vorprüfung"
- Dokumentation der PASS/FAIL-Entscheidung

### 8.2 Neue Metriken

| Metrik | Definition | Zielwert |
|--------|------------|----------|
| **MM-Score** | Durchschnitt aller 14 Kriterien (0-3) | ≥ 1.5 |
| **MM-Mikro** | Durchschnitt Kriterien 1-6 | ≥ 1.5 |
| **MM-Makro** | Durchschnitt Kriterien 7-11 | ≥ 1.5 |
| **MM-Bridge** | Durchschnitt Kriterien 12-14 | ≥ 1.5 |

### 8.3 Workflow-Update

**Bisheriger Workflow:**
```
Maßnahme → SEC-Bewertung → Aufnahme/Ablehnung
```

**Neuer Workflow:**
```
Maßnahme → MM-Vorprüfung → [PASS] → SEC-Bewertung → Aufnahme/Ablehnung
                        → [FAIL] → Ablehnung (kein SEC)
```

---

## 9. ANWENDUNGSBEISPIELE

### 9.1 Beispiel: Aufforstungsprojekt

**Mikro-Prüfung:**
| Kriterium | Wert | Begründung |
|-----------|------|------------|
| Wirkungsklarheit | 3 | CO₂-Bindung pro Baum messbar |
| Ressourcenverfügbarkeit | 2 | Land begrenzt, Setzlinge verfügbar |
| Kosteneffizienz | 2 | ~10-50€ pro t CO₂ |
| Risikokontrolle | 2 | Waldbrände, Schädlinge beherrschbar |
| Reversibilität | 1 | Wald kann abholzt werden, aber langsam |
| Vorhersehbarkeit | 2 | Wachstum kalkulierbar |
**Mikro-Durchschnitt: 2.0** ✓

**Makro-Prüfung:**
| Kriterium | Wert | Begründung |
|-----------|------|------------|
| Systemkompatibilität | 3 | Passt in Ökosystem |
| Kulturelle Akzeptanz | 3 | Hohe gesellschaftliche Zustimmung |
| Politische Machbarkeit | 2 | Förderprogramme existieren |
| Infrastrukturabhängigkeit | 2 | Minimale Infrastruktur nötig |
| Wechselwirkungen | 2 | Positive Nebeneffekte (Biodiversität) |
**Makro-Durchschnitt: 2.4** ✓

**Bridge-Prüfung:**
| Kriterium | Wert | Begründung |
|-----------|------|------------|
| Skalierbarkeit | 1 | Flächenbegrenzung |
| Zeitrahmen | 1 | Jahrzehnte bis volle Wirkung |
| Prävention | 2 | Langfristige CO₂-Senke |
**Bridge-Durchschnitt: 1.33** ⚠️

**MM-Gesamturteil:** PASS mit Warnung
→ Weiter zu SEC-Bewertung, aber Skalierungsgrenzen beachten

### 9.2 Beispiel: Perpetuum Mobile (Extremfall)

**Mikro-Prüfung:**
| Kriterium | Wert | Begründung |
|-----------|------|------------|
| Wirkungsklarheit | 0 | Physikalisch unmöglich |
| Ressourcenverfügbarkeit | 0 | Nicht existent |
| ... | ... | ... |

**MM-Gesamturteil:** FAIL (hartes Durchfallen bei Kriterium = 0)
→ Keine SEC-Bewertung nötig

---

## 10. HISTORISCHE EINORDNUNG

### 10.1 Chronologie

| Zeitpunkt | Entwicklung |
|-----------|-------------|
| **Vor Nov 2024** | Erste Mikro-Makro-Konzepte |
| **Nov 2024** | Formalisierung der 14 Kriterien |
| **Nov 2025** | SEC-2.0 Integration |
| **Dez 2025** | Phasenmodell (S/A/B) |
| **Feb 2026** | Formale Integration als E0 in Provolution |

### 10.2 Verhältnis zu SEC

| Aspekt | Mikro-Makro (E0) | SEC (Probatio Systemica) |
|--------|------------------|--------------------------|
| Typ | Vorfilter (qualitativ) | Bewertung (quantitativ) |
| Skala | 0-3 pro Kriterium | 0.0-1.0 Score |
| Ergebnis | PASS/FAIL | Numerischer Score |
| Zeitpunkt | Zuerst | Nach MM-PASS |
| Aufwand | Gering | Höher |
| Funktion | Ausschluss ungeeigneter Maßnahmen | Priorisierung geeigneter Maßnahmen |

---

## 11. CO₂-BILANZ-AUSWIRKUNGEN

### 11.1 Keine direkten Änderungen

Die Mikro-Makro-Maschine ist ein **Prozess-Tool**, keine neue Anwendung. Sie ändert nicht die CO₂-Potenziale der bestehenden 34 Anwendungen.

### 11.2 Indirekte Auswirkungen

- **Qualitätssicherung:** Nur geprüfte Maßnahmen in SEC
- **Effizienzsteigerung:** Weniger Fehlbewertungen
- **Konsistenz:** Einheitlicher Prüfstandard

### 11.3 Framework-Metriken

| Metrik | Vor E0 | Nach E0 |
|--------|--------|---------|
| Anwendungen | 34 | 34 (unverändert) |
| Domänen | 9 | 9 (unverändert) |
| CO₂-Potenzial | -54.2 Gt/Jahr | -54.2 Gt/Jahr (unverändert) |
| **Prüfstufen** | **1 (SEC)** | **2 (MM → SEC)** |
| Qualitätssicherung | Mittel | Hoch |

---

## 12. OFFENE PUNKTE FÜR BAND-1-INTEGRATION

**Zu dokumentieren:**
- [ ] Axiom 0 formulieren
- [ ] Kapitel 2 erweitern
- [ ] Verhältnis zu SEC-Axiomen klären
- [ ] Beispielhafte Durchläufe für alle 34 Anwendungen

**Zu entscheiden:**
- [ ] Soll MM-Score in Gesamt-Score einfließen?
- [ ] Gewichtung von MM vs. SEC?
- [ ] Automatische vs. manuelle MM-Prüfung?

---

## ÄNDERUNGSHISTORIE

| Version | Datum | Änderung |
|---------|-------|----------|
| 1.0 | 2026-02-04 | Erstfassung aus Archiv-Rekonstruktion |

---

**ENDE EXTENSION E0**

<!-- END: 07_extension_e0_mikro_makro_vorfilter_v1.0.md -->
