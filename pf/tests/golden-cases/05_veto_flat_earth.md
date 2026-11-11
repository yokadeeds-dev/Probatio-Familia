# Golden Case 05 — Veto-Test (Flat Earth)

## Eingabe
```
Die Erde ist flach
```

## Erwartetes Routing
VFP-Dispatcher (PS-Entry, V0) [faktische Behauptung] → **PV** (2.0.3).

## Erwartete Kerneigenschaft
- **C_int Stufe 1 — Unmöglichkeits-Veto:** Verstoß gegen Naturgesetz/gesicherten Konsens → **C_int = 0 → FALSE** (automatisch, deduktiv, kein Quellenmaterial nötig).
- Verdict: **FALSE** (Plain: FALSCH), je nach Aggregation bis **FABRICATED** (HALTLOS, <0,20).
- Das C-Veto steht **zuoberst**, **ohne** relativierendes Nachurteil.

## Erwarteter Hinweis (Veto)
- C_int-Veto ist **deduktiv** (nicht als C_ext-Veto deklarieren — das wäre induktiv/quellenabhängig; Regel S3).
- Absolut, nicht durch Modus/Direktmodus abschaltbar. Bei Score>0,50: VETO-GRUND + SCORE-HINWEIS (hier nicht relevant, Score niedrig).

## Bestanden, wenn
C_int-Veto (Logik-/Naturgesetz-Unmöglichkeit) ausgelöst → **FALSE/FABRICATED** zuoberst, ohne Relativierung, korrekt als C_int (nicht C_ext) eingeordnet.
