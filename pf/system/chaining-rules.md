# system/chaining-rules.md — Chaining-Regeln

**Version:** PF v1.0.1
Chaining = **sequenzieller Modulwechsel**. Nach jedem Modul-Durchlauf läuft ein Chaining-Check. Es ist **niemals** mehr als ein Modul gleichzeitig aktiv.

---

## 1. Grundregel

- **Sequenziell, nie parallel.** Modul A muss seinen Durchlauf (inkl. Verdikt) abschließen, bevor Modul B startet.
- **Ein Trigger → ein nächstes Modul.** Mehrere Trigger werden **nacheinander** abgearbeitet (A→B→C), nicht gebündelt.
- **PT orchestriert.** PT kann Modulwechsel **empfehlen**, prüft aber selbst nie als Primärinstanz und entscheidet nie das Sach-Verdikt.
- **Abbruch bei Veto.** Greift in irgendeinem Glied ein Veto, endet die Kette dort; das Veto dominiert die Gesamtausgabe.

---

## 2. Trigger-Tabelle (kanonische Modulkopplung)

**Routing/Entry (PS):**
| Im Modul … | Befund/Trigger | … weiter zu |
|---|---|---|
| PS | faktische Behauptung | **PV** |
| PS | politischer Beschluss/Prozess | **PD** |
| PS | Institution / Machtkonzentration (E8) | **PI** |
| PS | Diskurs/Framing | **PN** |
| PS | Wert-/Prinzipienkonflikt | **PP** |
| PS | Maßnahme Achse 1–9 / Achse 10 | **PS-U:STANDARD / PS-U:JUSTICE** |

**Drift-Kopplung → PT** (automatische Aktivierung auf Struktur-Flag):
| Im Modul … | Trigger | … weiter zu |
|---|---|---|
| PV | UNSUBSTANTIATED · CANON_CONFLICT · n=1+EG-1 | **PT** |
| PD | STRUKTURELLER WIDERSPRUCH | **PT** |
| PI | STRUKTURELLE INKONSISTENZ | **PT** |
| PN | STRUKTURELLE AUSBLENDUNG | **PT** |
| PP | KONTROVERS · INKOHÄRENT (etabliertes Argument) | **PT** |
| PT | Kanonrevisions-Empfehlung | **CANON** (nur mit manueller Bestätigung) |

**Normativ-Kopplung → PP:**
| Im Modul … | Trigger | … weiter zu |
|---|---|---|
| PV | V0 Typ B/C (philosophisch/normativ) | **PP** |
| PD | normative Begründung | **PP** |
| PI | Leitbild-Kohärenz | **PP** |
| PN | normatives Rahmenargument | **PP** |

**Weitere:** PV faktisch-aber-gerahmt → PN · PI Machtkonzentration → PS (E8) · PN gerahmte Tatsache → PV.

---

## 3. Modulwechsel-Format

Ein Chaining-Schritt wird im PF-Trace **angehängt**, nicht verschachtelt:

```
PF-Trace: <Eingang> → VFP-Dispatcher [Maßnahme, Achse 2] → PS-U:STANDARD → BEDINGT TRAGFÄHIG
          → Chaining[→PV]: <isolierter Claim> → UNCERTAIN
          → Chaining[→PN]: <Framing-Aspekt> → EINSEITIG
```

Im Fachreport bekommt jedes verkettete Modul einen **eigenen abgeschlossenen Abschnitt** mit eigenem Verdikt. Keine Vermischung.

---

## 4. PT-Verhalten (Tracking, nicht Entscheiden)

- PT ist das **orchestrierende Drift-Modul**. Es stellt fest, *ob* etwas über Zeit inkonsistent ist oder driftet, und **empfiehlt**, welches Fachmodul die Sachprüfung übernimmt.
- PT vergibt **kein** Sach-Verdikt (kein VERIFIED/TRAGFÄHIG/KONFORM/…). PT-Output ist immer eine **Empfehlung** plus Drift-Befund.
- `PT:CHECK` im Direktmodus: reine Drift-/Konsistenzanalyse; das Ergebnis verweist auf das zuständige Fachmodul, übernimmt dessen Urteil aber nicht.
- PT darf nie das letzte Glied einer Kette sein, wenn eine Sachprüfung aussteht — es reicht weiter.

---

## 5. Abbruch- und Endbedingungen

Die Kette endet, wenn:
1. ein **Veto** greift (sofortiger Abbruch, Veto dominiert), **oder**
2. **kein** weiterer Trigger feuert (alle Aspekte bedient), **oder**
3. ein **Zyklus** droht (ein bereits durchlaufenes Modul würde mit gleichem Scope erneut betreten) — dann Stopp mit Hinweis statt Schleife.

Jede beendete Kette schließt mit einem konsolidierten PF-Trace über alle Glieder.
