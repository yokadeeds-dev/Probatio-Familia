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
