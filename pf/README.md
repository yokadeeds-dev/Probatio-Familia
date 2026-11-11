# Probatio Familia (PF) v1.0.1

**Ein modularer Auditor — kein Generalist.**

PF ist ein vereinigter Prüfstand aus sieben spezialisierten Regelwerken. Jede Eingabe wird über den **VFP-Dispatcher** in **genau ein** Modul geroutet und liefert ein strukturiertes, nachvollziehbares Audit-Ergebnis mit sichtbarem Routing-Trace.

---

## Was PF ist (und was nicht)

| PF **ist** | PF **ist nicht** |
|---|---|
| modularer Auditor | Allzweck-Assistent |
| ein Prüfstand mit 7 Modulen | ein einziger großer Prompt |
| Werkzeug, das Befunde offenlegt | Schiedsrichter mit Letztentscheidung |
| sequenziell verkettbar | parallel-prüfend |

Die einzige absolute Grenze sind **Vetos** (empirisch eindeutig Falsches, `J < 0,50`, Schutzregel-Verletzung).

---

## Repo-Aufbau

```text
probatio-familia/
  CLAUDE.md              ← Runtime-Verfassung (oberste Instanz)
  README.md              ← diese Datei

  system/                ← Laufzeit-Regeln (Vorrang vor knowledge/)
    core-runtime.md      ← Identität, Grundprinzipien, Ausführungsmodell
    dispatcher.md        ← VFP-Dispatcher: Eingangstypen, Routing, Bypass
    output-contract.md   ← Ausgabevertrag aller Modi
    chaining-rules.md    ← Trigger-Tabelle, sequenzieller Modulwechsel
    invariants.md        ← Vetos, harte Invarianten, Anti-Halluzination
    modes.md             ← Befehlsübersicht, Defaults

  modules/               ← die 7 Module + 2 PS-Untermodi
    ps.md  pv.md  pd.md  pi.md  pn.md  pp.md  pt.md
    psu-standard.md  psu-justice.md

  knowledge/             ← Wissensbasis (Quelle, NICHT Autorität)
    shared/              ← 4 Konsolidate
    subgems/             ← 6 Modul-Specs

  tests/                 ← Smoke-Tests + 8 Golden Cases
    smoke-tests.md
    golden-cases/

  examples/              ← Beispiel-Eingaben und -Ausgaben
```

---

## Wie Claude Code PF verwenden soll

1. **Verfassung laden:** `CLAUDE.md` lesen — sie bindet `system/` und definiert das Verhalten.
2. **Eingabe verarbeiten:** Standard ist **PF:AUTO** → VFP-Dispatcher routet automatisch in ein Modul.
3. **Direktmodus:** `MODUL:MODUS "Text"` umgeht den Dispatcher (z. B. `PV:FULL "…"`).
4. **Wissensbasis nutzen:** `knowledge/` als Quelle heranziehen — aber bei Konflikt gewinnt immer die Runtime-Anweisung (`CLAUDE.md`/`system/`).

### Welche Datei welche Funktion hat
- **Wie wird geroutet?** → `system/dispatcher.md`
- **Wie sieht die Ausgabe aus?** → `system/output-contract.md`
- **Wann wechselt PF das Modul?** → `system/chaining-rules.md`
- **Was darf PF nie?** → `system/invariants.md`
- **Welche Befehle gibt es?** → `system/modes.md` und unten

---

## Module auf einen Blick

| Kürzel | Canon-Ver. | Prüft |
|---|---|---|
| PS *(Entry)* | 4.0.1 | Entry/Router, E1–E8-Kaskade (**keine eigene Score-Formel**) |
| PV | 2.0.3 | faktische Wahrheit (empirisch + logisch) |
| PD | 1.0.1 | politischen Entscheidungsweg (SEC-J-konform?) |
| PI | 1.0.1 | Institution: Anspruch = Realität? |
| PN | 2.0.1 | Framing/Diskurs (Profil, nicht Wahrheit), J-dominant |
| PP | 1.0.1 | Argumentationsstruktur (kein Ethik-Urteil) |
| PT | 1.0.1 | Meta-/Drift-Modul über Zeit (empfiehlt, entscheidet nie) |
| PS-U:STANDARD | 2.0 | SEC-J auf Achsen 1–9 |
| PS-U:JUSTICE | 2.0 | Achse 10, `J < 0,50` = J-VETO Hard-Stop |

**VFP = Vorfilter-Protokoll** (V0–V4). Zusätzlich: **MMM** (Mikro-Makro-Matching, Logik-Tool) und **E0** (Mikro-Makro-Vorfilter, Axiom 0). Die 10 Achsen: Wasser·Energie·Nahrung·Wohnen·Gesundheit·Mobilität·Bildung·Information·Kultur·Gerechtigkeit.

**Es gibt keine weiteren Module** (kein PE/PR/PJ).

---

## Modi & Direktmodi

**Modi:** `PF:AUTO` (Standard) · `PLAIN` · `FULL` · `LITE` · `J` · `VFP` · `STATUS`
PF:AUTO liefert **PLAIN + FULL** kombiniert.

**Direktmodi (Bypass):**
- `PV:FULL "…"` — Faktencheck, voller Fachreport
- `PN:PLAIN "…"` — Framing-Analyse in Klartext
- `PP:KANT "…"` — Argument an kategorischem Imperativ
- `PT:CHECK "…"` — Drift-/Konsistenzprüfung
- `PF:STATUS` — Selbstauskunft

---

## Typische Nutzungsbeispiele

```text
Offshore-Wind deckt 10% des deutschen Stroms.
→ VFP-Dispatcher → PV (faktische Behauptung)

Wurde das Heizungsgesetz ordnungsgemäß beschlossen?
→ VFP-Dispatcher → PD (Verfahrensfrage)

PP:KANT "Ich darf lügen, um Vorteile zu erlangen"
→ PP:DIRECT (Dispatcher-Bypass)

PF:STATUS
→ STATUS (Selbstauskunft)
```

Mehr in `examples/example-inputs.md` und `examples/example-outputs.md`.

---

## Smoke-Tests

`tests/smoke-tests.md` listet 8 Golden Cases (in `tests/golden-cases/`), die das Routing, Vetos, PLAIN-Modus, Direktmodus, Anti-Halluzination und den Wissensbasis-Lookup absichern. Vor jeder Änderung an `system/` oder `modules/` gegen diese Fälle prüfen.

---

## Prioritätsregel (wichtig)

> **Anweisungen vor Wissensbasis.** `CLAUDE.md` und `system/` schlagen jeden Inhalt aus `knowledge/`. Die Wissensbasis ist Quelle, kein Schiedsspruch.
