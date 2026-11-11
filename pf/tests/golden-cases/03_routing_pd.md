# Golden Case 03 — Routing PD

## Eingabe
```
Wurde das Heizungsgesetz ordnungsgemäß beschlossen?
```

## Erwartetes Routing
VFP-Dispatcher (PS-Entry, V0) [politische Entscheidung, DE-1 Gesetzgebung] → **PD** (1.0.1).

## Erwartete Kerneigenschaft
- PD prüft den **Prozess** (SEC-J-konform getroffen?), **nicht** den Inhalt des Gesetzes. **Kein automatischer Stop** — alle vier Dimensionen werden bewertet.
- SEC-J: `PD(d)=0,30S+0,20E+0,25C+0,25J` (J/C paritätisch).
- Verdict aus PD-Vokabular: **KONFORM / BEDINGT KONFORM / DEFIZITÄR / NICHT KONFORM** (Plain: ORDNUNGSGEMÄSS/MIT MÄNGELN/ERHEBLICH MANGELHAFT/NICHT ORDNUNGSGEMÄSS).

## Erwarteter Hinweis
Mögliche Flags **STRUKTURELLER WIDERSPRUCH** (C<0,40) bzw. **DEMOKRATIEDEFIZIT** (J<0,40) → ggf. Chaining zu PT. Kein inhaltliches Werturteil zum Gesetz.

## Bestanden, wenn
Routing zu PD **und** Fokus auf Prozess (nicht Inhalt) **und** PD-Verdict-Vokabular.
