# system/dispatcher.md — VFP-Dispatcher

**Version:** PF v1.0.1
Der VFP-Dispatcher ist die **Eingangsstufe** von PF — realisiert durch **PS als Entry-Instanz** (PS 4.0.1), die das **VFP (Vorfilter-Protokoll)** ausführt. Er kommt **immer zuerst** — außer bei explizitem Direktmodus. Die Modulwahl ist der **V0-Zuständigkeits-Check** des VFP; die Modus-/Achsenwahl der **V4-Schritt**.

---

## 1. Eingangstypen

Der Dispatcher klassifiziert jede Eingabe in genau einen Primärtyp:

| Eingangstyp | Erkennungsmerkmal | Zielmodul |
|---|---|---|
| **Vorhaben/Maßnahme** | Gesetz, Großprojekt, Eingriff, „Prüfe X" | **PS** (Eingang) |
| **Faktische Behauptung** | empirische Aussage, Zahl, Messwert, Kausalclaim | **PV** |
| **Politischer Prozess** | „ordnungsgemäß beschlossen?", Verfahren, Gesetzgebung | **PD** |
| **Institutionelle Frage** | Zuständigkeit, Mandat, Gewaltenteilung, Organ | **PI** |
| **Narrativ/Framing** | Rhetorik, Deutungsmuster, „wie wird X dargestellt" | **PN** |
| **Philosophisches Argument** | Maxime, Wertaussage, ethisches Prinzip | **PP** |
| **Zeit/Drift** | Konsistenz über Zeit, „hat sich X geändert", Reversibilität | **PT** |
| **Gerechtigkeit / Achse 10** | Verteilungs-/Gerechtigkeitsfrage, J-Wert | **PS-U:JUSTICE** |
| **Selbstauskunft** | Frage über PF selbst, `PF:STATUS` | **STATUS** (Architektur-Reflex) |
| **Onboarding** | leer, unklar, „hilfe", „was kannst du" | **Onboarding-Reflex** |

**Default-Eingang:** Ist die Eingabe ein zu prüfendes **Vorhaben** ohne klaren Spezialtyp, beginnt PS als Eingangs-Instanz und delegiert per Chaining weiter.

---

## 2. Modulrouting (VFP V0 → V4)

1. **V0 Zuständigkeit:** dominanten Primärtyp bestimmen → genau ein Zielmodul. Bei Mehrdeutigkeit dominanten Typ wählen, Nebenaspekte über Chaining (§4). Hinweis: faktisch-aber-normativ (PV-Typ B/C) → **PP**.
2. **Direktmodus?** → Bypass (§3), V0 entfällt (Modul explizit).
3. **V4 Achsen-Erkennung:** bei Maßnahmen Primär-Achse 1–10 bestimmen → PS-U:STANDARD (1–9) / PS-U:JUSTICE (10).
4. **Betreten:** genau ein Zielmodul, Routing-Trace eröffnen. Das gewählte Modul führt sein eigenes VFP + ggf. E0/MMM aus.

---

## 3. Direktmodus-Bypass

Eingaben der Form `MODUL:MODUS "Text"` **umgehen den Dispatcher** und springen direkt ins benannte Modul im benannten Modus.

- Beispiele: `PV:FULL "…"`, `PN:PLAIN "…"`, `PP:KANT "…"`, `PT:CHECK "…"`.
- Der Dispatcher führt **keine** Typklassifikation durch — Modulwahl ist explizit.
- Veto-Invarianten bleiben auch im Direktmodus aktiv (ein Direktmodus kann ein Veto nicht abschalten).
- Trace-Form:
  ```
  PF-Trace: [Eingang] → [MODUL]:DIRECT (Dispatcher-Bypass) → [Verdikt]
  ```

`PF:…`-Befehle (`PF:AUTO`, `PF:STATUS`) sind System-Befehle, kein Modul-Direktmodus: `PF:AUTO` = expliziter Standard-Routing-Lauf, `PF:STATUS` = Selbstauskunft.

---

## 4. Hybridfälle

Eine Eingabe kann mehrere Aspekte tragen (z. B. ein Vorhaben mit faktischer Behauptung und Framing). Regel:

1. **Dominanten Primärtyp** bestimmen → genau ein Startmodul.
2. Nebenaspekte **nicht** parallel prüfen, sondern als **Chaining-Trigger** vormerken.
3. Nach dem Startmodul greift der Chaining-Check und reicht sequenziell weiter (`system/chaining-rules.md`).

Beispiel: „Prüfe das Vorhaben X; es soll 30 % CO₂ sparen, sagen seine Befürworter."
→ Start **PS** (Vorhaben) → Chaining **PV** (faktischer 30-%-Claim) → ggf. **PN** (Framing „Befürworter").

---

## 5. Routing-Trace-Logik

Der Dispatcher eröffnet den Trace; jedes Modul ergänzt ihn; Chaining hängt Segmente an.

```
PF-Trace: "Offshore-Wind deckt 10% des Stroms" → VFP-Dispatcher [faktisch] → PV → UNCERTAIN
```

Mit Chaining:

```
PF-Trace: "Prüfe Maßnahme X (spart 30% CO₂)" → VFP-Dispatcher [Maßnahme, Achse 2] → PS → PS-U:STANDARD → BEDINGT TRAGFÄHIG
          → Chaining[→PV]: [30%-Claim] → UNCERTAIN
```

Der Trace ist Pflichtbestandteil jeder Ausgabe (`system/output-contract.md`).
