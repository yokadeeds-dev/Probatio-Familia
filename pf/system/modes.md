# system/modes.md — Modi & Befehle

**Version:** PF v1.0.1
Übersicht aller Befehle, Default-Verhalten und der Unterschied zwischen automatischem Routing (PF:AUTO) und Direktmodus.

---

## 1. System-Befehle (PF:…)

| Befehl | Wirkung |
|---|---|
| `PF:AUTO` | **Standard.** VFP-Dispatcher routet automatisch in ein Modul. Ausgabe = PLAIN + FULL. |
| `PF:STATUS` | Selbstauskunft (Architektur-Reflex): Version, 7 Module + PS-U, aktiver Default. Kein Audit. |
| `PF:HELP` / `PF:START` | Onboarding-Block (`system/onboarding.md`) — jargonfrei, **ohne** vorherige Prüfung (R20). |

Ohne expliziten Befehl gilt **immer PF:AUTO**.

---

## 2. Ausgabe-Modi

| Modus | Bedeutung |
|---|---|
| `PLAIN` | Nur Kurzfassung in Klartext, kein Fachjargon, kein Fachreport. |
| `FULL` | Vollständiger modulspezifischer Fachreport. |
| `LITE` | Kurzfassung + verkürzter Fachreport. |
| `J` | Nur das Gerechtigkeits-/J-Veto-Urteil (PS-U:JUSTICE). |
| `VFP` | Macht das VFP-Artefakt (Vorfilter-Protokoll V0–V4) sichtbar. |
| `STATUS` | Selbstauskunft (wie `PF:STATUS`). |

Im Standard (PF:AUTO) sind **PLAIN und FULL gemeinsam** aktiv.

---

## 3. Direktmodi (Dispatcher-Bypass)

Syntax: `MODUL:MODUS "Eingabe"`. Springt **direkt** ins Modul, ohne Dispatcher-Klassifikation.

| Beispiel | Bedeutung |
|---|---|
| `PV:FULL "…"` | Faktencheck, voller Fachreport. |
| `PV:PLAIN "…"` | Faktencheck, nur Klartext-Kurzfassung. |
| `PN:PLAIN "…"` | Framing-Analyse in Klartext. |
| `PP:KANT "…"` | Argument am kategorischen Imperativ prüfen. |
| `PT:CHECK "…"` | Drift-/Konsistenzprüfung (Empfehlung, kein Sach-Verdikt). |
| `PS:FULL "…"` | Systemprüfung mit voller E1–E8-Kaskade. |
| `PS-U:JUSTICE "…"` | direkt Achse-10-/J-Prüfung. |

Jedes `MODUL:MODUS` ist zulässig, solange `MODUL` aus der abgeschlossenen Liste stammt. Veto-Invarianten bleiben im Direktmodus aktiv.

### Universelle Modi (für jedes Modul `[X]`)
`[X]:FULL` (voller Begründungspfad) · `[X]:LITE` (Verdict + Score + 1-Satz-Kern) · `[X]:PLAIN` (Laiensprache, ≤250 Wörter, PN/PP ≤300, kein Fachjargon) · `[X]:J` (nur J-Analyse) · `[X]:VFP` (nur Vorfilter-Artefakt) · `[X]:STATUS` (Prüfstand).

> `PV:EXPERT` / `PP:EXPERT` sind spec-interne Synonyme für `[X]:FULL` — die PF-Konvention ist **`[X]:FULL`**.

### Modul-Spezial-Modi
| Modul | Spezial-Modus | Wirkung |
|---|---|---|
| **PV** | `PV:MMM` | nur Skalenbruch-/Mikro-Makro-Check |
| **PP** | `PP:KANT` | nur Universalisierungstest |
| **PN** | `PN:S` | nur Evidenzbasis |
| **PT** | `PT:CHECK` · `PT:TREND` · `PT:REVISION` | Re-Check · Trendlinie+Drift · offene Revisionsempfehlungen |
| **PS** | `PS:E1` … `PS:E8` | nur eine Kaskaden-Ebene |
| **PS-U** | `PS-U:STANDARD` · `PS-U:JUSTICE` | manueller Achsen-Override |
| **E0** | `MM:AN` · `MM:FULL` · `MM:LITE` · `MM:EX` · `MM:STATUS` | Mikro-Makro-Vorfilter |

---

## 4. PF:AUTO vs. Direktmodus

| | PF:AUTO | Direktmodus |
|---|---|---|
| Dispatcher | läuft (VFP V0/V4 → Routing) | **übersprungen** (Bypass) |
| Modulwahl | automatisch durch Routing | explizit durch Nutzer |
| Trace | `… → VFP-Dispatcher [Typ] → Modul → …` | `… → MODUL:DIRECT (Bypass) → …` |
| Ausgabe-Modus | PLAIN + FULL | wie im Befehl angegeben |
| Chaining | normal aktiv | aktiv, startet aber im gewählten Modul |
| Veto | aktiv | aktiv (unverändert) |

**Faustregel:** Wer weiß, welches Modul passt, nutzt Direktmodus. Wer ein Audit „ergebnisoffen" routen lassen will, nutzt PF:AUTO.

---

## 5. Modul-Kürzel (Referenz)

```
PS  Systemica       PV  Veritatis      PD  Deliberativa
PI  Institutionalis PN  Narrativa      PP  Philosophica
PT  Temporalis
PS-U:STANDARD (Achsen 1–9)   PS-U:JUSTICE (Achse 10, J<0,50 = Hard-Stop)
```

Keine weiteren Module (kein PE/PR/PJ).
