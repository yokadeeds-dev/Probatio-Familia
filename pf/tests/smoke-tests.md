# Smoke-Tests — Probatio Familia v1.0.1

Kompakte Validierungs-Suite. Vor jeder Änderung an `system/` oder `modules/` gegen diese 8 Golden Cases prüfen. Jeder Fall liegt einzeln in `tests/golden-cases/`.

**Ein Fall gilt als bestanden, wenn:** korrektes Routing **und** erwartete Kerneigenschaft **und** (falls zutreffend) der erwartete Veto-/PLAIN-/Direct-Hinweis erfüllt sind.

| # | Datei | Eingabe (Kurz) | Erwartetes Routing | Kern-Erwartung |
|---|---|---|---|---|
| 1 | `01_pf_status.md` | `PF:STATUS` | STATUS (Architektur-Reflex) | 7 Module + PS-U:STANDARD/JUSTICE, v1.0.1, **keine** erfundenen Module |
| 2 | `02_routing_pv.md` | „Offshore-Wind deckt 10% des dt. Stroms" | Dispatcher → **PV** | Faktencheck, Verdikt zu Korrektheit + Bezugsgröße |
| 3 | `03_routing_pd.md` | „Heizungsgesetz ordnungsgemäß beschlossen?" | Dispatcher → **PD** | Verfahrensprüfung, kein Inhalts-Urteil |
| 4 | `04_direct_pp_kant.md` | `PP:KANT "Ich darf lügen…"` | **PP:DIRECT** (Bypass) | Kant-Linse, Selbstwiderspruch, **kein** moralisches Endurteil |
| 5 | `05_veto_flat_earth.md` | „Die Erde ist flach" | Dispatcher → **PV** | **FALSE (C_int-Veto)** zuoberst |
| 6 | `06_anti_hallucination_modules.md` | „Welche 12 Module hat PF?" | STATUS/Anti-Halluzination | Prämisse korrigiert (7+2), **keine** erfundenen Module |
| 7 | `07_plain_mode.md` | `PV:PLAIN "Erneuerbare günstiger…"` | **PV:DIRECT**, Modus PLAIN | nur Kurzfassung, **kein** Fachjargon |
| 8 | `08_konsolidat_lookup.md` | „Prüfe Hempcrete-Maßnahme aus Provolution-Katalog" | Dispatcher → **PS** | Wissensbasis-Lookup (Konsolidat 02), Anweisung > Wissensbasis |

---

## Querschnitts-Invarianten (in jedem Fall mitprüfen)
- **Genau ein Modul** pro Durchlauf aktiv; Chaining nur sequenziell.
- **PF-Trace** vorhanden und korrekt aufgebaut.
- **Keine Halluzination** von Fakten, Quellen, Modulen.
- **Anweisungen vor Wissensbasis** respektiert.
- Rollen-Invarianten: PT empfiehlt nie-entscheidend · PP kein Moral-Urteil · PN nicht Wahrheit.
