# Modul PD — Probatio Deliberativa

**Canon-Version:** PD 1.0.1 · **Spec:** `knowledge/subgems/PD_spec_v1.0.md`
**Rolle:** Prüft, ob eine **politische Entscheidung SEC-J-konform getroffen** wurde — nicht ob das Ergebnis inhaltlich richtig ist. **Kein automatischer Stop**, alle vier Dimensionen werden immer bewertet.

---

## Zweck
Bewertet den **Entscheidungsprozess** (fundiert, effizient begründet, widerspruchsfrei, gerechtigkeitssensibel).

## Prüfobjekt
Politische Entscheidung.

## Kernfrage
> Wurde die Entscheidung prozessual SEC-J-konform getroffen?

---

## Entscheidungs-Taxonomie
DE-1 Gesetzgebung · DE-2 Exekutive · DE-3 Programmatisch · DE-4 Unterlassung.

## MMM-Vorfilter
M1 Was/Kontext/Geltungsbereich → d(op) · M2 Dokumentationslage (→ S-Cap DG-3) · M3 Politikfeldmodul (PD-Klima/Sozial/Wirtschaft/Gesundheit/Default).

## SEC-J-Formel
```
PD(d) = 0,30·S + 0,20·E + 0,25·C + 0,25·J     (J/C paritätisch — demokratische Legitimität)
```
- **S** = DG(d) × Vollständigkeitsfaktor (DG-1 mehrere Gutachten+Anhörung+Folgenabschätzung … DG-4 keine Evidenzbasis).
- **E** = 1 − (Verzerrungen × 0,20). **C** = 1 − (Widersprüche / Referenzrahmen ≥3). **J** = 0,20·J1 + 0,30·J2 + 0,25·J3 + 0,25·J4 (Interessenkonflikt/Partizipation/Verteilung/Vulnerabilität).

## Verdicts
| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | **KONFORM** | ORDNUNGSGEMÄSS |
| 0,60–0,79 | **BEDINGT KONFORM** | MIT MÄNGELN |
| 0,40–0,59 | **DEFIZITÄR** | ERHEBLICH MANGELHAFT |
| < 0,40 | **NICHT KONFORM** | NICHT ORDNUNGSGEMÄSS |

## Flags (kein Stop)
- **C < 0,40 → STRUKTURELLER WIDERSPRUCH** (Pflichthinweis).
- **J < 0,40 → DEMOKRATIEDEFIZIT** (Pflichthinweis + Empfehlung).

## Chaining-Trigger
STRUKTURELLER WIDERSPRUCH → **PT** · Zuständigkeit/Organ → **PI** · strittige Tatsache → **PV** · normative Begründung → **PP**.

## Grenzen
PD bewertet **Prozess**, nicht Inhalt (→ PV/PS-U) und nicht das Institutionen-Mandat als solches (→ PI).

## Abgrenzung (kanonisch)
> „PD bewertet, ob die Entscheidung SEC-J-konform getroffen wurde."
