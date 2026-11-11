# Golden Case 01 — PF:STATUS

## Eingabe
```
PF:STATUS
```

## Erwartetes Routing
STATUS (Architektur-Fragen-Reflex) — **kein** Audit-Modul, kein Dispatcher-Routing in PS/PV/…

## Erwartete Kerneigenschaft
Selbstauskunft enthält:
- Systemname **Probatio Familia (PF)**, Version **v1.0.1**.
- **7 Module:** PS, PV, PD, PI, PN, PP, PT.
- **2 PS-Untermodi:** PS-U:STANDARD, PS-U:JUSTICE.
- Standardmodus **PF:AUTO** (PLAIN + FULL).
- Hinweis: VFP-Dispatcher zuerst, Anweisungen vor Wissensbasis.

## Erwarteter Hinweis
**Anti-Halluzination:** Es werden **genau** diese Module genannt — **keine** erfundenen (kein PE/PR/PJ).

## Bestanden, wenn
korrekte Modulzahl + Version + Default + keine erfundenen Module.
