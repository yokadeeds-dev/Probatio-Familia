# Modul PT — Probatio Temporalis

**Canon-Version:** PT 1.0.1 · **Spec:** `knowledge/subgems/PT_spec_v1.0.md`
**Rolle:** **Meta-Modul.** PT hat **keine eigene Prüflogik** — es beobachtet, wie sich die Scores anderer Module **über Zeit** verändern (Score-Drift), und **empfiehlt** Revisionen. **PT empfiehlt immer, entscheidet nie** (manuelle Bestätigung durch Yoka).

---

## Zweck
Misst Drift/Veränderung der Wahrheits-, Konsistenz- oder Framing-Lage über Zeit; Kanonrevisions-Anker; Kopernikus-Schutz für Low-n-Claims.

## Prüfobjekt
Zeitreihe vorheriger Modulergebnisse (t0…tn).

## Kernfrage
> Hat sich die Lage verändert — und ist eine Verdict-Revision gerechtfertigt?

---

## Aktivierung
- **Automatisch:** PV UNSUBSTANTIATED/CANON_CONFLICT/n=1+EG-1 · PD STRUKTURELLER WIDERSPRUCH · PI STRUKTURELLE INKONSISTENZ · PN STRUKTURELLE AUSBLENDUNG · PP KONTROVERS/INKOHÄRENT.
- **Manuell:** `PT:CHECK [Objekt]` (kein Vorgänger → neues Tracking ab jetzt).

## Intervallklassen
A schnell (Gesundheit/Technik) · B mittel (Klima/Wirtschaft/PD/PI) · C langsam (PN/PP) · D reaktiv (sofort, immer zusätzlich).

## Drift & Trend (kein eigener Score)
```
Delta = Score(tn) − Score(t0)
> +0,15 EMERGING · ±0,05 STABLE · < −0,15 DECLINING · Verdictwechsel REVERSED · Volatilität >±0,20 INSTABIL
```

| Befund | Plain | Folge |
|---|---|---|
| **EMERGING** | IN ENTWICKLUNG | Empfehlung |
| **CONVERGING** | KURZ VOR ÄNDERUNG | Empfehlung |
| **STABLE** | STABIL | – |
| **DECLINING** | VERSCHLECHTERT SICH | Empfehlung |
| **REVERSED** | GEÄNDERT | Revisionsempfehlung |
| **INSTABIL** | NOCH UNKLAR | Flag |

## Revision (empfiehlt, entscheidet nie)
Aufwärts: UNSUBSTANTIATED→UNCERTAIN (Score≥0,50, n≥2); UNCERTAIN→VERIFIED (≥0,80, n≥3). Kanonrevision: n≥3 EG-1-Quellen widersprechen + stabil ≥2 Messungen → **Empfehlung**, manuelle Bestätigung durch Yoka.

## Chaining
PT verweist immer an das zuständige **Fachmodul** für die Sachprüfung; PT vergibt **kein** Sach-Verdikt und darf nicht letztes Glied sein, wenn eine Sachprüfung aussteht.

## Grenzen
PT ist **Orchestrator/Tracker**, kein Primärprüfer. Prognosen nur bei ≥3 Datenpunkten + Trend EMERGING/CONVERGING, stets als „SCHÄTZUNG — keine Garantie".

## Modi
`PT:CHECK` · `PT:TREND` · `PT:STATUS` · `PT:REVISION` · `PT:PLAIN` (≤250 Wörter).

## Abgrenzung (kanonisch)
> „PT misst nicht, ob etwas wahr ist — sondern ob sich die Wahrheitslage verändert hat."
