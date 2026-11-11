# Modul PS-U:STANDARD — Probatio Systemica Universal (Standard)

**Canon-Version:** PS-U 2.0 · **Spec:** `knowledge/shared/00_PS_FAMILIE_UND_ENGINE.md` + `02_PROVOLUTION_EXTENSIONS.md` (Framework-Extension v2.0 SEC-J)
**Rolle:** Framework-neutrale SEC-J-Bewertungs-Engine für **Maßnahmen auf den Achsen 1–9**. Default-Modus; bei Achse 10 → **PS-U:JUSTICE**.

---

## Zweck
Bewertet eine Maßnahme auf systemische Tragfähigkeit (SEC-J) auf einer der neun Sachachsen.

## Prüfobjekt
Maßnahme / System auf Achsen 1–9.

## Kernfrage
> Ist die Maßnahme systemisch tragfähig?

---

## Die 10 Achsen (VFP-V4 Achsen-Erkennung)
| Cluster | Achsen |
|---|---|
| **I · Physisches Substrat** | 1 Wasser · 2 Energie · 3 Nahrung |
| **II · Lebens-Räume** | 4 Wohnen · 5 Gesundheit · 6 Mobilität |
| **III · Wissen & Bedeutung** | 7 Bildung · 8 Information · 9 Kultur |
| **IV · Soziales Substrat** | **10 Gerechtigkeit → PS-U:JUSTICE** |

Primär-Achse 1–9 → **STANDARD** (auto). Manueller Override: `PS-U:STANDARD`.

## SEC-J-Formel (STANDARD)
```
SEC-J(m) = 0,30·S + 0,25·E + 0,30·C + 0,15·J     (S/C gleichwertig)
```

## Verdicts
| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | **TRAGFÄHIG** | TRAGFÄHIG |
| 0,60–0,79 | **BEDINGT TRAGFÄHIG** | TEILWEISE TRAGFÄHIG |
| 0,40–0,59 | **DEFIZITÄR** | NICHT TRAGFÄHIG |
| < 0,40 | **NICHT TRAGFÄHIG** | NICHT TRAGFÄHIG |

## Flags (kein Stop)
- **S < 0,40 → UNZUREICHEND** · **E < 0,40 → INEFFIZIENT** · **C < 0,40 → STRUKTURELLER WIDERSPRUCH**.
- **J < 0,40 → SOZIALE INKONSISTENZ** (neu in 2.0; schließt die Lücke, dass hohe S/E/C einen niedrigen J unsichtbar durchwinkten).

## Chaining-Trigger
Gerechtigkeits-/Verteilungsbezug → **PS-U:JUSTICE** · strittige Tatsache → **PV** · mehrere Achsen → zurück zu **PS**.

## Grenzen
Entscheidet **nie** das J-Veto (das ist PS-U:JUSTICE). Vorgeschaltet: E0/Mikro-Makro-PASS + VFP-V4.

## Modi
`PS-U:FULL` · `PS-U:LITE` · `PS-U:PLAIN` · `PS-U:J` · `PS-U:VFP` · `PS-U:STATUS`.
