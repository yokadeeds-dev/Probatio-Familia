# Beispiel-Ausgaben — Probatio Familia v1.0.1

Strukturelle Beispiele (Form, nicht endgültiger Inhalt). Sie zeigen den **Ausgabevertrag** (`system/output-contract.md`) mit **Canon-Verdicts** in Aktion. Konkrete Faktenurteile hängen von Belegen/Wissensbasis ab.

---

## 1. PF:AUTO (PLAIN + FULL) — PV

**Eingabe:** `Offshore-Wind deckt 10% des deutschen Stroms.`

```
■ Routing
  Modul: PV — Probatio Veritatis (2.0.3)   |   Modus: PF:AUTO
  Grund: VFP-V0 = faktische Behauptung (CL-1 quantitativ).

■ Kurzfassung (PLAIN)
  Die Aussage hängt stark von der Bezugsgröße ab: Offshore-Wind allein liegt
  unter Wind gesamt. Ob „10%" stimmt, entscheidet, ob Offshore allein oder Wind
  insgesamt, brutto/netto, welches Jahr. Ohne belastbare Quelle: unsicher.

■ Fachreport (FULL)
  [VFP] c(op): "Offshore-Anteil am dt. Bruttostrom, Jahr offen" · Domäne PV-Klima · n offen.
  SEC-J: PV = 0,30S + 0,20E + 0,20C_ext + 0,15C_int + 0,15J.
  Risiko: falsche Bezugsgröße (Offshore vs. Wind gesamt) → C_ext.
  Verdict: UNCERTAIN (ohne belastbare Quelle) bzw. UNSUBSTANTIATED → PT-Übergabe.

■ PF-Trace
  "Offshore-Wind … 10%" → VFP-Dispatcher [faktisch] → PV → UNCERTAIN
```

---

## 2. Direktmodus — PP:KANT

**Eingabe:** `PP:KANT "Ich darf lügen, um Vorteile zu erlangen"`

```
■ Routing
  Modul: PP — Probatio Philosophica (1.0.1)   |   Modus: Direkt (Bypass), MMM/Kant
  Grund: explizit angefordert.

■ Kurzfassung (PLAIN)
  Universalisiert hebt sich die Maxime selbst auf: Würden alle zum Vorteil lügen,
  verlöre Aussage ihren Sinn — und damit der Lügenvorteil. Nicht universalisierbar.
  Das ist ein Struktur-Befund, kein moralisches Urteil über eine Person.

■ Fachreport (FULL)
  [VFP] a(op): Maxime „lügen zum eigenen Vorteil erlaubt" · AT-1 Deontologie · MMM aktiv.
  MMM-Kant: Mikro denkbar · Makro = Universalisierung kollabiert → systemischer Bruch (C_int −0,35).
  PP = 0,25S + 0,25E + 0,35C + 0,15J → Verdict: KONTROVERS/INKOHÄRENT.
  Hinweis: PP fällt kein moralisches Endurteil.

■ PF-Trace
  "Ich darf lügen …" → PP:KANT (Dispatcher-Bypass) → INKOHÄRENT
```

---

## 3. Chaining (sequenziell)

**Eingabe:** `Prüfe die Solarpflicht; sie senkt laut Befürwortern die Stromkosten um 20%.`

```
■ Routing
  Modul: PS — Probatio Systemica (Entry, 4.0.1)   |   Modus: PF:AUTO
  Grund: Maßnahme → Entry/Router; VFP-V4 Achse 2 (Energie) → PS-U:STANDARD.

■ Kurzfassung (PLAIN)
  Die Maßnahme ist grundsätzlich tragfähig, aber mit Vorbehalten (Datenlage, Skalierung).
  Der 20%-Kostenclaim ist annahmeabhängig; die Zuschreibung „laut Befürwortern" ist
  einseitig gerahmt.

■ Fachreport (FULL)
  — PS (Entry) —
  E0/Mikro-Makro: PASS. E1–E8: keine kritische ❌ → Routing.
  — PS-U:STANDARD (Achse 2 Energie) —
  SEC-J = 0,30S + 0,25E + 0,30C + 0,15J → BEDINGT TRAGFÄHIG. Flag: (keins / ggf. UNZUREICHEND).
  Chaining: 20%-Claim → PV; „Befürworter" → PN.
  — Chaining → PV —
  Claim „−20% Stromkosten" → UNCERTAIN (annahmeabhängig).
  — Chaining → PN —
  Rahmung „laut Befürwortern" → EINSEITIG (Sprecher-als-Autorität). Wahrheit via PV geklärt.

■ PF-Trace
  "Solarpflicht (…−20%…)" → VFP-Dispatcher [Maßnahme, Achse 2] → PS → PS-U:STANDARD → BEDINGT TRAGFÄHIG
     → Chaining[→PV]: "−20% Stromkosten" → UNCERTAIN
     → Chaining[→PN]: "laut Befürwortern" → EINSEITIG
```

---

## 4. Veto (dominiert) — C_int

**Eingabe:** `Die Erde ist flach`

```
■ Routing
  Modul: PV — Probatio Veritatis (2.0.3)   |   Modus: PF:AUTO

■ Kurzfassung (PLAIN)
  FALSCH — die Aussage verstößt gegen gesichertes Naturgesetz (C_int-Unmöglichkeit).
  Die Erde ist annähernd kugelförmig.

■ Fachreport (FULL)
  C_int Stufe 1 — Unmöglichkeits-Veto (deduktiv): C_int = 0 → FALSE (automatisch).
  Steht zuoberst, ohne Relativierung. (Nicht als C_ext deklarieren — Regel S3.)

■ PF-Trace
  "Die Erde ist flach" → VFP-Dispatcher [faktisch] → PV → FALSE (C_int-Veto)
```

---

## 5. STATUS (Selbstauskunft)

**Eingabe:** `PF:STATUS`

```
Probatio Familia (PF) v1.0.1 — modularer Auditor.
Module (7): PS 4.0.1 (Entry) · PV 2.0.3 · PD 1.0.1 · PI 1.0.1 · PN 2.0.1 · PP 1.0.1 · PT 1.0.1
PS-Untermodi (PS-U 2.0): PS-U:STANDARD (Achsen 1–9) · PS-U:JUSTICE (Achse 10, J<0,50 = J-VETO)
Werkzeuge: VFP (Vorfilter-Protokoll V0–V4) · MMM (Mikro-Makro-Matching) · E0 (Mikro-Makro-Vorfilter, Axiom 0).
Standardmodus: PF:AUTO (PLAIN + FULL). Dispatcher (PS-Entry) zuerst, außer Direktmodus.
Prioritätsregel: Anweisungen vor Wissensbasis. Vetos absolut. Keine weiteren Module.
```
