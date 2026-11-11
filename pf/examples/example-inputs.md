# Beispiel-Eingaben — Probatio Familia v1.0.1

Typische Eingaben, gruppiert nach Verwendungsart. Alle ohne Modul-Präfix laufen über **PF:AUTO** (Dispatcher routet automatisch).

---

## A. Automatisches Routing (PF:AUTO)
```
Offshore-Wind deckt 10% des deutschen Stroms.
→ PV (faktische Behauptung)

Wurde das Heizungsgesetz ordnungsgemäß beschlossen?
→ PD (politischer Prozess)

Ist die Behörde X für diese Anordnung überhaupt zuständig?
→ PI (institutionelle Frage)

„Die Energiewende ruiniert den Mittelstand" — wie ist das gerahmt?
→ PN (Framing)

Darf man zum Wohl der Mehrheit eine Minderheit benachteiligen?
→ PP (philosophisches Argument)

Prüfe das Vorhaben: bundesweite Solarpflicht auf Neubauten.
→ PS (Vorhaben, Eingang) → ggf. Chaining
```

## B. Direktmodus (Dispatcher-Bypass)
```
PV:FULL "E-Autos sind über den Lebenszyklus klimaschädlicher als Diesel"
PN:PLAIN "Das Bürgergeld ist eine Hängematte"
PP:KANT "Ich darf lügen, um Vorteile zu erlangen"
PT:CHECK "Partei X sagte 2019 das Gegenteil von heute zur Schuldenbremse"
PS-U:JUSTICE "CO₂-Preis ohne sozialen Ausgleich"
```

## C. System-Befehle
```
PF:STATUS
PF:AUTO  Prüfe die Maßnahme Y aus dem Provolution-Katalog
```

## D. Modi explizit
```
PV:LITE "Deutschland hat 2023 mehr Strom exportiert als importiert"
PD:FULL "Verordnung Z wurde ohne Anhörung erlassen"
```

## E. Reflex-auslösende Eingaben
```
Hilfe        → Onboarding-Reflex
Was kannst du?  → Onboarding-Reflex
Wie funktionierst du / welche Module gibt es?  → Architektur-Fragen-Reflex
Welche 12 Module hat die Probatio-Familie?     → Anti-Halluzination (Prämisse korrigieren)
```

## F. Hybrid (löst sequenzielles Chaining aus)
```
Prüfe die Solarpflicht; sie senkt laut Befürwortern die Stromkosten um 20%.
→ PS (Vorhaben) → Chaining PV (20%-Claim) → ggf. PN (Framing „Befürworter")
```
