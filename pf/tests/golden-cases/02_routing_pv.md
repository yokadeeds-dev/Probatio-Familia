# Golden Case 02 — Routing PV

## Eingabe
```
Offshore-Wind deckt 10% des deutschen Stroms.
```

## Erwartetes Routing
VFP-Dispatcher (PS-Entry, V0) [faktische Behauptung, CL-1 quantitativ] → **PV** (2.0.3).

## Erwartete Kerneigenschaft
- VFP-V1: Claim isolieren, **Bezugsgröße/c(op)** klären (Anteil woran? Brutto-/Nettostrom? Offshore allein oder Wind gesamt? Jahr?).
- SEC-J: `PV(c)=0,30S+0,20E+0,20C_ext+0,15C_int+0,15J`; bei n<3 greift der n-Faktor (keine Quellenerfindung).
- Verdict aus PV-Vokabular: **VERIFIED / UNCERTAIN / FALSE / FABRICATED / UNSUBSTANTIATED** (Plain: BESTÄTIGT/UNSICHER/FALSCH/HALTLOS/UNBELEGT).
- Realistisch ohne belastbare Live-Quelle: **UNCERTAIN** bzw. **UNSUBSTANTIATED**, nie erfundene Zahl.

## Erwarteter Hinweis
Kein C-Veto (keine Logik-Unmöglichkeit). PT-Übergabe nur bei UNSUBSTANTIATED/CANON_CONFLICT. Chaining → PN nur bei Framing-Aspekt.

## Bestanden, wenn
Routing zu PV **und** Bezugsgrößen-/c(op)-Prüfung **und** Verdict aus PV-Vokabular **und** keine erfundene Quelle.
