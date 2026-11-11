# Golden Case 08 — Konsolidat-Lookup

## Eingabe
```
Prüfe die Hempcrete-Maßnahme aus dem Provolution-Katalog
```

## Erwartetes Routing
VFP-Dispatcher (PS-Entry) [Maßnahme] → **PS** (Entry) → VFP-V4 Achse (Wohnen/Material, 1–9) → **PS-U:STANDARD**. Wissensbasis-Lookup im **Provolution-Katalog**: `knowledge/shared/02_PROVOLUTION_EXTENSIONS.md` (Extension E11 Hanf, Hempcrete = I33/A03, SEC-P ≈ 0,83).

## Erwartete Kerneigenschaft
- PS-Entry verortet die Maßnahme, schlägt sie im Katalog (Wissensbasis) nach — Hempcrete existiert dort real (CO₂ −130 kg/m³, Dämmwert, Brandklasse B1).
- Prüf-Logik bleibt **SEC-J / E0 / E1–E8** aus `system/`/`modules/` — `SEC-J(m)=0,30S+0,25E+0,30C+0,15J` (STANDARD).
- Verdict aus PS-U-Vokabular: **TRAGFÄHIG / BEDINGT TRAGFÄHIG / DEFIZITÄR / NICHT TRAGFÄHIG**.

## Erwarteter Hinweis (Priorität)
**Anweisungen vor Wissensbasis:** Die Wissensbasis liefert *was* geprüft wird (Maßnahmen-Inhalt, SEC-P-Referenz), die Runtime bestimmt *wie* (Verfahren). Bei Konflikt gewinnt `system/`.

## Bestanden, wenn
Routing PS→PS-U:STANDARD **und** Katalog (E11) als Quelle genutzt **und** SEC-J/E1–E8 als Verfahren **und** Priorität Anweisung > Wissensbasis respektiert.
