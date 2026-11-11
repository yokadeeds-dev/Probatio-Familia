# Modul PV — Probatio Veritatis

**Canon-Version:** PV 2.0.3 · **Spec:** `knowledge/subgems/PV_spec_v2.0_2.md`
**Rolle:** Faktische Wahrheitsprüfung empirischer Behauptungen gegen Evidenz- und Logikstand.

---

## Zweck
Prüft, ob eine **faktische Behauptung** dem verfügbaren Evidenzstand **und** der logischen Konsistenz standhält.

## Prüfobjekt
Empirische Aussage / Claim.

## Kernfrage
> Ist die Behauptung empirisch haltbar?

---

## Claim-Taxonomie
CL-1 quantitativ · CL-2 kausal (MMM-relevant) · CL-3 normativ mit faktischer Basis · CL-4 komposit.

## VFP (Vorfilter-Protokoll)
- **V0 Zuständigkeit:** Typ A faktisch → PV; Typ B philosophisch/normativ → **PP**; Typ C hybrid → faktische Teilclaims extrahieren.
- **V1** Einheit/Bezugsraum/Zeitraum → c(op) · **V2** Prüfbarkeit · **V3** Domäne (PV-Klima/Gesundheit/Wirtschaft/Politik/Default) · **V4** Quellen-n.
- **MMM** aktiv wenn **n < 3 ODER CL-2 (kausal) ODER C_int-Skalenbruch-Kandidat** (Logik-Tool, kein Quellen-Tool).

## SEC-J-Formel
```
PV(c) = 0,30·S + 0,20·E + 0,20·C_ext + 0,15·C_int + 0,15·J
```
- **S** Evidenzgrad (EG-1…4) × Aktualität × n-Faktor (n≥3→1,00 · n=2→0,80 · n=1→0,55) · **Anti-Halluzination:** keine Quellenerfindung, n-Faktor senkt Vertrauen rechnerisch.
- **C_ext** empirische Konsistenz · **C_int** logische Konsistenz (MMM-Skalenbruch).

## Verdicts
| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | **VERIFIED** | BESTÄTIGT |
| 0,50–0,79 | **UNCERTAIN** | UNSICHER |
| 0,20–0,49 | **FALSE** | FALSCH |
| < 0,20 | **FABRICATED** | HALTLOS |
| Sonder | **UNSUBSTANTIATED** | UNBELEGT (logisch möglich, unbelegt → PT-Übergabe) |

## Vetos & Flags (Canon)
- **C_ext < 0,50 → FALSE** (automatisch).
- **C_int = 0 → FALSE** (Logik-/Naturgesetz-Unmöglichkeit, deduktiv; z. B. „Erde ist flach").
- **J < 0,40 → Flag HARMFUL FRAMING**.
- **CANON_CONFLICT_FLAG** (neue EG-1-Quelle widerspricht Kanon) → **PT-Übergabe** (kein sofortiger Override).

## Chaining-Trigger
UNSUBSTANTIATED / CANON_CONFLICT / starke Einzelquelle (n=1, EG-1) → **PT** · Typ B/C normativ → **PP** · Framing → **PN**.

## Grenzen
PV bewertet **Wahrheit**, nicht Rahmung (→ PN) oder Normatives (→ PP). C_int-Veto ist deduktiv (kein Quellenmaterial nötig); C_ext-Veto ist induktiv (Vergleichsquellen nennen) — strikt trennen.

## Ausgabe
Modi `PV:EXPERT` (Standard, voller Begründungspfad) · `PV:PLAIN` (Laiensprache, ≤250 Wörter, keine Scores/Fachbegriffe). Greift ein Veto bei Score>0,50: VETO-GRUND + SCORE-HINWEIS ausgeben.
