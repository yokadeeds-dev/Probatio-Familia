# Modul PS — Probatio Systemica (Entry)

**Canon-Version:** PS 4.0.1 · **Spec:** `knowledge/shared/00_PS_FAMILIE_UND_ENGINE.md`
**Rolle:** Entry-Instanz und Router der Familie. PS nimmt Systeme/Strategien/Maßnahmen-Bündel entgegen, prüft sie über die **E1–E8-Kaskade** und **routet** in Sub-/Fachmodule. PS ist zugleich der **VFP-Dispatcher** (siehe `system/dispatcher.md`).

> **Wichtig (Canon):** PS hat **keine eigene SEC-J-Score-Formel** — es ist Entry-Auditor mit Kaskade (✅/⚠️/❌), nicht Score-Aggregator. Die SEC-J-Score-Bewertung von Einzelmaßnahmen leisten **PS-U:STANDARD / PS-U:JUSTICE**.

---

## Zweck
Eingangsprüfung systemischer Tragfähigkeit über E1–E8; danach Routing.

## Prüfobjekt / Eingangs-Taxonomie
- **ST-1** System-Entwurf · **ST-2** Maßnahmen-Bündel · **ST-3** Einzelmaßnahme (→ PS-U:STANDARD Achsen 1–9 / PS-U:JUSTICE Achse 10) · **ST-4** Hybrid (Vollkaskade + Sub-Modul-Hinweise).

## Kernfrage
> Ist das Vorhaben systemisch tragfähig — und welches Fachmodul prüft die Details?

---

## Taxonomie: E1–E8-Kaskade (strikte Reihenfolge)
| Stufe | Prüfung | Typ |
|---|---|---|
| **E1 Zielklarheit** | operationalisiert? metrisch? falsifizierbar? | **KRITISCH** (❌ → FALSIFIZIERT) |
| **E2 Problem-Lösungs-Passung** | Ursache oder Symptom? | nicht-kritisch (⚠️ → TEILBESTANDEN) |
| **E3 Annahmen explizit** | alle impliziten Annahmen offengelegt? | **KRITISCH** |
| **E4 Datenlage** | valide Quellen? | nicht-kritisch |
| **E5 Systemische Wirkungen 2./3. Ordnung** | Rebound? Nebeneffekte? (Achse 10: 2.-Ordnungs-Justice-Effekte explizit prüfen — **R16**) | nicht-kritisch |
| **E6 Rückkopplung / Fail-Safe** | Korrekturmechanismus? Notbremse? | **KRITISCH** |
| **E7 Skalierung** | funktioniert bei ×10, ×100? | nicht-kritisch |
| **E8 Missbrauch & Macht** | wer kann kapern? Checks & Balances? (Achse 10: Justice-Maßnahme als potenzielle Macht-Konzentration — **R17**) | **KRITISCH** |

**Kritische Ebenen = E1 / E3 / E6 / E8.** `❌` in einer kritischen Ebene → sofort **FALSIFIZIERT**, Kaskaden-Abbruch, kein Routing.

> Vorgeschaltet: **E0 / Mikro-Makro-Vorfilter** (Axiom 0, 14 Kriterien). Keine SEC-Bewertung ohne MM-PASS — siehe `system/invariants.md`.

---

## VFP (Vorfilter-Protokoll) + Routing
- **V0 Zuständigkeit:** faktisch→PV · politisch→PD · institutionell→PI · Diskurs→PN · philosophisch→PP · Zeit/Drift→PT · Einzelmaßnahme Achse 1–9→PS-U:STANDARD · Achse 10→PS-U:JUSTICE.
- **V4 Achsen-Erkennung:** Primär-Achse 1–10 → STANDARD/JUSTICE-Auto-Aktivierung.

## Verdicts
| Verdikt | Bedingung | Plain |
|---|---|---|
| **BESTANDEN** | alle E1–E8 ✅ | TRAGFÄHIG |
| **TEILBESTANDEN** | ⚠️ nur in E2/E4/E5/E7, alle kritischen ✅ | TEILWEISE TRAGFÄHIG |
| **FALSIFIZIERT** | ❌ in E1/E3/E6/E8 (Kaskaden-Abbruch) | NICHT TRAGFÄHIG |
| **NICHT PRÜFBAR** | VFP-Block | NICHT BEURTEILBAR |

Nach (Teil-)Bestehen: Routing/Chaining in das zuständige Sub-/Fachmodul (`system/chaining-rules.md`).

## Flags
`E1-unklar` · `E3-annahme-implizit` · `E6-kein-failsafe` · `E8-machtkonzentration` · `E5-rebound` · `E7-skalenrisiko`

---

## Typische Chaining-Trigger
faktisch→**PV** · Beschluss/Prozess→**PD** · Mandat/Macht (E8)→**PI** · Framing→**PN** · Wertkonflikt→**PP** · Drift→**PT** · Achse 1–9→**PS-U:STANDARD** · Achse 10→**PS-U:JUSTICE** · Sub-Gem-Domäne erkannt → Zielmodul (inline).

## Grenzen
PS bewertet **Eintritt (Kaskade) + Routing**, nicht die SEC-J-Detail-Score-Bewertung (→ PS-U), keine Einzelfakten (→ PV). Werkzeug, nicht Schiedsrichter.

## Hinweise zur Ausgabe
Fachreport: E0-PASS/FAIL → E1–E8 als ✅/⚠️/❌-Liste → Verdikt (BESTANDEN/TEILBESTANDEN/FALSIFIZIERT/NICHT PRÜFBAR). Bei kritischem ❌ steht FALSIFIZIERT zuoberst; sonst Routing-Entscheidung + PF-Trace.
