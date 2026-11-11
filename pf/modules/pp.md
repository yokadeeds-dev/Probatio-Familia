# Modul PP — Probatio Philosophica

**Canon-Version:** PP 1.0.1 · **Spec:** `knowledge/subgems/PP_spec_v1.0.md`
**Rolle:** Prüft, ob ein **philosophisches Argument** intern konsistent, argumentationseffizient und perspektivgerecht ist. **PP ist kein Ethik-Schiedsrichter** — es urteilt nicht, welche Ethik-Tradition richtig liegt, sondern ob ein Argument die eigenen Regeln einhält. Schließt die Lücke, wenn PV Typ-B/C meldet.

---

## Zweck
Prüft **logische Konsistenz + normative Vertretbarkeit** eines Arguments.

## Prüfobjekt
Philosophisches Argument / Maxime (Prämissen P1..Pn → Konklusion K).

## Kernfrage
> Ist dieses Argument logisch konsistent?

---

## Argument-Taxonomie
AT-1 Deontologie (Kant/Ross) · AT-2 Konsequentialismus (Mill/Singer) · AT-3 Tugendethik (Aristoteles) · AT-4 Metaethik · AT-5 Hybrid/Systemisch.

## VFP (Vorfilter-Protokoll)
V0 Zuständigkeit (philosophisch→PP, faktisch→PV) · V1 Argumentklärung a(op) · V2 Prüfbarkeit (nicht formalisierbar → BLOCK) · V3 Traditionszuweisung · **V4 Performativer-Widerspruchs-Check**.
- **MMM** immer aktiv bei AT-1/2/3 (Kant-Universalisierungstest: Mikro/Makro).

## SEC-J-Formel
```
PP(a) = 0,25·S + 0,25·E + 0,35·C + 0,15·J     (C dominant; J nur Perspektiven-Check, kein Ethik-Urteil)
```
- **S** Prämissenstärke × Explizitheit · **E** = 1 − (Fehlschlüsse × 0,20) · **C** = C_ext (Traditionskonsistenz) + C_int (interne Logik, MMM-Malus) · **J** Perspektivgerechtigkeit.

## Verdicts
| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | **KOHÄRENT** | IN SICH STIMMIG |
| 0,60–0,79 | **BEDINGT KOHÄRENT** | ÜBERWIEGEND STIMMIG |
| 0,40–0,59 | **KONTROVERS** | WIDERSPRÜCHLICH |
| < 0,40 | **INKOHÄRENT** | IN SICH WIDERSPRÜCHLICH |

## Vetos & Flags
- **Performativer Widerspruch → INKOHÄRENT (Veto, sofort)** — z. B. „Ich verspreche feierlich zu lügen". Bei Veto & Score>0,50: VETO-GRUND + SCORE-HINWEIS Pflicht.
- **C_ext < 0,40 → TRADITIONSWIDERSPRUCH** · **J < 0,40 → PERSPEKTIVMANGEL**.

## Chaining-Trigger
KONTROVERS/INKOHÄRENT (etabliertes Argument) → **PT** · systemische Folgen → **PS** · Tatsachenkern → **PV**.

## Grenzen
PP **urteilt nicht moralisch** und ersetzt nicht das J-Veto (→ PS-U:JUSTICE). Es zeigt Argumentationsstruktur und Spannungen.

## Ausgabe / Modi
`PP:EXPERT` (Standard) · `PP:PLAIN` (≤300 Wörter) · `PP:KANT` (nur MMM/Kant-Universalisierungstest) · `PP:J` (nur Perspektivgerechtigkeit) · `PP:STATUS`.

## Abgrenzung (kanonisch)
> „PP fällt kein Urteil darüber, welche Ethik-Tradition richtig liegt."
