# PF-Integration — Auswertung & Integrationsprotokoll (KAPITEL 00–05)

**Stand:** 2026-06-02 · **Bezug:** Yoka hat die Kapitel 00–05 mit der **Probatio Familia (PF-Gem v1.0.1, PS:FULL)** geprüft und die Prüfläufe ans Kapitelende angehängt, mit dem Auftrag „auswerten und integrieren".
**Rohläufe (verbatim):** `99_META/PF_VERLAEUFE_RAW_2026-06-02.md` (Audit-Trail, Quelle).
**Disclaimer:** Die PF-Läufe sind KI-Selbstaudits (Gemini-Gem), kein externer Peer-Review — gleiche Anspruchs-Disziplin wie der KI-Audit-Disclaimer im Klima-Repo.

---

## Übersicht der PF-Verdikte

| Kap | Gegenstand | PF-Verdikt (Eingang) | Kritische Falsifikation | Patch → Endzustand |
|---|---|---|---|---|
| **00** Probatio & SEC-J | Meta-Framework | ✅ TRAGFÄHIG | — (E8 durch J-Veto-als-Feedback-Loop geheilt) | keiner nötig; Body deckt sich |
| **01** Bildung & Lernen | System-Entwurf | ✅ TRAGFÄHIG | — (E8 Wissenselite via 3 Schutzlinien bestanden) | keiner nötig; 2 Empfehlungen → Offene Punkte |
| **02** Arbeit & Erwerb | System-Patch | ✅ TRAGFÄHIG **via Patch** | E6 + E8 (vorher FALSIFIZIERT) | **Body-Patch nötig:** (a) „soziale Harmonie" → SEC-J; (b) ZK → Luxus/Anreiz |
| **03** Gesundheit & Pflege | System-Entwurf | ⚠️ TEILWEISE TRAGFÄHIG | E6 Pflege-Paradoxon + E8 Daten-Mesh | **Body-Patch nötig:** (a) Pflege als Rotationspflicht; (b) Zero-Knowledge / on-edge Daten |
| **04** Recht & Justiz | System-Entwurf | ⚠️ TEILWEISE TRAGFÄHIG | E8 Info-Kompetenzfilter = Vorzensur | **Body-Patch nötig:** Filter → SEC-J-Ampel (Tagging statt Sperre) |
| **05** Demokratie & Governance | System-Entwurf → Dialog | ⚠️→✅ via Mehrrunden-Dialog | E8 Info-Filter (= selbe Wurzel wie 04) | **Body-Patch nötig:** Ampel + GA-Konfig-Gate + DoS/Sybil-Schutz |

**Kern-Erkenntnis (kapitelübergreifend):** Die E8-Falsifikation in **04** und **05** hat **dieselbe Wurzel** (Kompetenz-gekoppelte *Verbreitungs-Sperre* = „Wahrheitsministerium") und **dieselbe Lösung**, die Yoka im 05-Dialog entwickelt hat: das **SEC-J-Ampelsystem** — jeder darf publizieren, das System *kennzeichnet* (grün/gelb/rot + grau für reine Meinung), statt zu *blockieren*. Diese Lösung wird **einmal kanonisch** in 04 (Medien-Abschnitt) gesetzt und in 05 (Informations-Governance) mit dem GA-Mechanismus + DoS-Schutz vertieft; gegenseitige Querverweise.

---

## Was Yoka im PF-Dialog entwickelt hat (die „Anpassungen")

### KAPITEL 02 — der ZK/SEC-J-Patch (PF: E6+E8 Status-Wechsel von FALSIFIZIERT → PASS)
1. **Ethik-Bewertung gehärtet:** Die weiche, manipulierbare Score-Dimension **„soziale Harmonie"** (und das vage „Bewusstsein und Ethik") wird **gestrichen** und durch das **harte, falsifizierbare SEC-J-Raster** ersetzt — insbesondere die **J-Dimension (J1 Zugang · J2 Auslassung · J3 Verteilung · J4 Vulnerabilität)**. Damit kann die KI nicht „moralischer Diktator" werden; „Social-Credit"-Risiko gebannt. *Die Ethik wird überprüfbare Mathematik.*
2. **ZK als echter Anreiz:** Das **Zusatzkontingent** wird explizit an **Über-Standard-/Luxus-Zugang** gekoppelt (Reise, seltene Materialien, besondere Kunst) — als **extrinsischer Anreiz** für ungeliebte, (noch) nicht automatisierbare Aufgaben, die BGV deckt das Überleben. Schließt die Motivationslücke (E6), ohne Akkumulation (ZK bleibt projektgebunden, nicht anhäufbar, nicht vererbbar).
3. **Empfehlung (offen):** Ökologischen Sockelwert sauber mit SEC-J verschränken (Verzicht als positiver E-/S-Score).

### KAPITEL 03 — die zwei NACHBESSERUNGEN (PF: E6+E8 noch FALSIFIZIERT → mit diesen Patches tragfähig)
1. **Pflege-Paradoxon (E6):** Grundpflege darf **keine** „Freiwilligenarbeit für ZK" sein (Anreiz empirisch unzureichend für 24/7-Schwerstpflege → Vulnerabelste fallen durch). Lösung: **obligatorische Rotationsaufgabe** (analog Zivildienst, auf die ganze Population verteilt), verankert in den 2–3 Wochenstunden. Nur wenn alle die harte Last teilen, kann Freiwilligkeit anderswo bestehen. (Demografie bleibt real: auch im perfekten System altern/sterben Menschen.)
2. **Daten-Souveränität (E8):** PV-HEALTH-Mesh darf Gesundheitsdaten **nur on-edge** (eigenes Gerät) verarbeiten und **100 % anonymisiert/aggregiert** ans Makrosystem senden (**Zero-Knowledge-Proofs**). Die KI trackt **nie** „individuellen Stress", nur **„Quartiers-Stress"**. Verhindert biopolitischen Totalitarismus.
3. **Empfehlung (offen):** Dediziertes Pflege-Teilkonzept (Alten-/Langzeit-/Palliativpflege) — war schon als Offener Punkt notiert; durch Rotation jetzt strukturell verankert, inhaltlich weiter auszubauen.

### KAPITEL 04 — der Konzept-Patch Filter → Tagging (PF: E8 FALSIFIZIERT → mit Patch tragfähig)
- **Streichen** der kompetenz-gekoppelten **Verbreitungs-Sperre** (Gatekeeping „wer kompetent ist, darf massenhaft verbreiten" = strukturell ununterscheidbar von Vorzensur, kaperbar durch jeden Demagogen).
- **Ersetzen** durch **Kennzeichnung**: Die KI/Probatio blockiert keine Aussage, sondern heftet ein **nicht-entfernbares, transparentes SEC-J-Tag / Kontext-Overlay** an (z. B. PV-Score: FABRICATED). Reichweite reguliert sich durch das **gebildete System selbst**, nicht durch Verbot. Konsistent mit der eigenen Freiheitsregel.

### KAPITEL 05 — der vollständige Informations-Governance-Stack (Mehrrunden-Dialog, Endzustand TRAGFÄHIG)
Aufeinander aufbauende, PF-bestätigte Bausteine:
1. **SEC-J-Ampel + V0-Vorfilter** (TRAGFÄHIG MIT MODIFIKATION): V0 trennt zuerst den Typ —
   - **faktische Behauptung** → harte empirische Ampel (**PV**): grün ≥0,80 VERIFIED · gelb 0,50–0,79 UNCERTAIN · rot <0,50 FALSE/FABRICATED;
   - **normatives Argument** → Logik-Ampel (**PP**): KOHÄRENT / KONTROVERS / INKOHÄRENT;
   - **reine Meinung** → **graues Tag** „subjektiv, nicht falsifizierbar" (kein Score — schützt das System davor, Geschmacks-/Ethik-Schiedsrichter zu werden). Falsifikation/PT erzwingt Neubewertung (Ampel kann springen).
2. **Klarnamenszwang VERWORFEN** (E8 FALSIFIZIERT): Klarnamen für „systemrelevante Meinungen" = Repressionswerkzeug gegen Whistleblower/Minderheiten (J4). → **Pseudonymität bleibt**; zulässig nur **verifizierte „Terraner-Accounts" (Proof of Personhood gegen Bots), pseudonym nutzbar**. Die Ampel macht Klarnamen überflüssig (ein rot getaggter Text verliert Wirkungslast, egal wer ihn schrieb).
3. **Operative Konfiguration: offen, aber geschützt** (E8 Status-Wechsel → PASS): Kern-Konfig **transparent/einsehbar, aber nicht beliebig änderbar**. Änderungen nur per **„Globaler Anweisung" (GA)**, die selbst die SEC-J-Prüfung durchlaufen muss → „Code is Law" + Probatio-Gate. Macht liegt im **Verfahren**, nicht beim Einreicher (egal ob anonym oder Ministerin).
4. **GA-Formalstruktur** (4 Pflichtfelder): Identität (Krypto-Hash + Stake/Proof-of-Personhood) · Target-Code (Modul+Parameter) · Delta (Status quo → neu) · Normative Prämisse (PP-geprüft). Beispiel GA-042 (PV-J-Veto 0,40→0,60, um „unsensibel" formulierte Fakten zensierbar zu machen) → **FALSIFIZIERT** (E1+E8, PP INKOHÄRENT: eine Wahrheit wird nicht unwahr, weil sie ungerecht klingt).
5. **DoS/Sybil-Schutz** (E7+E8 PASS): drei Hebel kombiniert — **Staking** (ZK-Pfand; bei Bot-/Toxik-Spam Slashing, bei ehrlich-aber-abgelehnt voll zurück), **Peer-Vorfilter** (n verifizierte Co-Signaturen / Threshold), **Proof of Work** (lokales Rechenrätsel als asymmetrischer Zeitfilter). System bleibt offen für Menschen, undurchdringlich für Maschinen-Spam.
6. **Testfälle** (PF-bestätigt): Lobby-Gewichtsänderung (E↑/J↓) → C-Veto + J-Veto HARD STOP; KIN-Umverteilung Stadt-zu-Land → J-Veto HARD STOP. Bleibt transparent im Log → Kaperversuch wird *enttarnt*, nicht zensiert.

---

## Integrationsregeln (für alle 6 Kapitel angewandt)

1. **Body-Patches:** Falsifizierte/gepatchte Stellen im Fließtext durch die PF-tragfähige Fassung ersetzen (nicht nur anhängen).
2. **Offene Punkte aktualisieren:** Gelöstes streichen/umschreiben, Rest-Empfehlungen aufnehmen.
3. **Kompakte „Probatio-Familia-Befund (2026-06-02)"-Box** statt des langen Roh-Dumps am Kapitelende: Verdikt · kritische E-Ebenen · was sich änderte · Rest-offene Punkte · KI-Audit-Disclaimer + Verweis auf die Roh-Datei.
4. **Roh-Verlauf** bleibt verbatim in `PF_VERLAEUFE_RAW_2026-06-02.md` erhalten (nichts gelöscht).
5. **Kapitelübergreifend kanonisch:** SEC-J-Ampel einmal in 04 setzen, in 05 vertiefen; Querverweise. Pflege-Rotation (03) ↔ Rotation für unliebsame Aufgaben (02) verzahnen. GA-Konfig-Gate (05) ↔ Falsifikations-/Konfig-Logik der Probatio (00).

---

## Status-Nachführung

- [x] 00 — Befund-Box (kein Body-Patch) ✓
- [x] 01 — Befund-Box + 2 Empfehlungen in Offene Punkte ✓
- [x] 02 — SEC-J-Score-Patch + ZK-Luxus-Patch + Offene Punkte + Befund-Box ✓
- [x] 03 — Pflege-Rotation-Abschnitt + Zero-Knowledge-Daten + Offene Punkte + Befund-Box ✓
- [x] 04 — Filter→SEC-J-Ampel-Patch + Offene Punkt + Befund-Box ✓
- [x] 05 — Informations-Governance-Abschnitt (Ampel + GA-Gate + DoS) + Voting-Klarstellung + Befund-Box ✓
- [x] Rohläufe verbatim gesichert → `PF_VERLAEUFE_RAW_2026-06-02.md` ✓
- [x] Verifikation (kein Anker/Rohdump/BOM, Befund-Box in allen 6) ✓
- [ ] E1–E8-Self-Audit-Schablone (`04_MOTOR/E1-E8_SELFAUDIT_Wirtschaft.md`) auf 02–05 anwenden (Folgeschritt; Befund-Boxen liefern bereits die E-Ebenen-Kurzfassung)
- [ ] PF gegen KAPITEL 06–25 laufen lassen (analog) — noch offen
- [ ] BESTANDSAUFNAHME / VEROEFFENTLICHUNGS_PLAN nachziehen

**Abgeschlossen 2026-06-02:** Auswertung + Integration der PF-Verläufe für KAPITEL 00–05. Alle sechs Kapitel sind nach Self-Audit **tragfähig** (00/01 ohne Patch, 02 via 2 Patches, 03/04/05 via eingearbeitete Nachbesserungen). Externer PS:FULL-Re-Lauf auf den neuen Stand bleibt der nächste Validierungsschritt (ersetzt den Self-Audit nicht).

---

# Batch 2 — KAPITEL 06–12 (2026-06-02)

**Neuer Arbeitsmodus (von Yoka festgelegt):** Yoka liefert nur die **PF-Erstprüfung** (PF-Gem, hier überwiegend **PS-U:STANDARD** mit S/E/C/J-Scores) am Kapitelende; die **Nacharbeit** (Patches mit Gesamtsystem-Wissen, Integration, Befund-Box, Roh-Sicherung) macht Claude.
**Rohläufe (verbatim):** `99_META/PF_VERLAEUFE_RAW_KAP06-12_2026-06-02.md`.

| Kap | Verdikt | Score (S·E·C·J) | Kritik | Eingearbeitete Nacharbeit |
|---|---|---|---|---|
| **06** Wirtschaft | BEDINGT TRAGFÄHIG | 0,79 (0,90·0,90·**0,55**·0,90) | C: Übergangsphase | Abschnitt „Robustheit des Übergangs" (Arbitrage-Sperre, Kapitalflucht ins Leere, Außenhandels-Schnittstelle, GA-fixierte Schwellen); Score-Grundlage auf SEC-J harmonisiert |
| **07** Energie | TRAGFÄHIG | 0,90 (0,95·0,95·**0,80**·0,90) | C: Megacity-Speicher, Sensor-Monopol | Speicher-Kaskade über Regionalverbund; Ressourcen-Cloud als **offenes P2P-Mesh** |
| **08** Ernährung | TRAGFÄHIG | 0,90 (0,95·0,85·0,85·0,95) | C/E: Wild-Entnahme, LED-Energie | Wild-Entnahme erzeugt **keinen ZK-Score** (KI-Bestandspflege); Volksgärten Off-Peak-/Geothermie-Betrieb |
| **09** Wohnen | TRAGFÄHIG | 0,89 (0,95·0,90·**0,85**·0,85) | C: Greenfield/Brownfield | Abschnitt „fraktale Transformation" (15-Min-Zellen, Nachrüstung statt Abriss); lokale Tragwerk-Produktion als offener Punkt |
| **10** Familie | BEDINGT TRAGFÄHIG | 0,81 (0,90·0,85·**0,65**·0,85) | C: lokale Mehrheits-Tyrannei | **Gewaltenteilung + überregionale Instanz** für Familien-Eingriffe (J4-Schutz, neurodivers ≠ Schaden); neuer Abschnitt „Alter & Generationen" |
| **11** Kultur | BEDINGT TRAGFÄHIG | 0,79 (0,90·**0,60**·0,75·0,95) | E: Kreativmaterial vs. Ressourcen | KM **physikalisch gedeckelt** (erneuerbar/zirkulär/digital frei; seltene/energieintensive Materie via ZK) — Bewertungs-Freiheit bleibt |
| **12** Wissenschaft | TRAGFÄHIG (E1–E8) | E5 ⚠️ | E5: Oberaufsicht-Mechanik | KI-Oberaufsicht konkret organisiert (Menschenrat + Ethik-Kollegium + J-Veto + GA-Gate); PP-Lauf für Ethik-Letztbegründung als offener Punkt |

**Querbezüge gesetzt:** 06↔22 (Übergang/Attraktivitäts-Sog), 06/02 (Score → SEC-J), 06/05 (GA-Schwellen), 07/03 (Zero-Knowledge ↔ P2P-Mesh), 08/07 (LED-Off-Peak), 10/03 (Pflege-Rotation, Alter), 10/04 (Gewaltenteilung Familien-Eingriff), 11/07 (KM ↔ LRMS), 12/05 (KI-Oberaufsicht-Gremien).

**Konsistenz-Flag (weiterhin offen):** zwei Score-Kontexte (Beitrag = SEC-J · Allokation = D1–D4+ROC) → Konsolidierung in `02_KONSOLIDIERUNG` (siehe BESTANDSAUFNAHME §7). In 06 jetzt explizit benannt.

**Status 06–12:** alle nach Self-Audit **tragfähig** bzw. **bedingt tragfähig mit eingearbeiteter C-/E-Härtung**; keine harten Vetos in der Erstprüfung. Verifiziert: kein Anker/Rohdump/BOM, Befund-Box in allen 7.
**Offen:** KAPITEL 13–25 (Yoka liefert PF sukzessive); externer PS:FULL-Re-Lauf; Score-Konsolidierung.

---

# Batch 3 — KAPITEL 14–20 (2026-06-02)

Gleicher Modus (Yoka liefert PF-Erstprüfung, Claude macht die Nacharbeit). **Rohläufe:** `99_META/PF_VERLAEUFE_RAW_KAP14-20_2026-06-02.md`.
**Wichtig:** **KAPITEL 13 (Umwelt/Klima)** und **KAPITEL 21 (Technologie/KI-Rolle)** tragen **keinen** PF-Report (Original-Zeitstempel, nicht geprüft) — siehe Hinweis unten.

| Kap | Verdikt | Modul | Kritik → Nacharbeit |
|---|---|---|---|
| **14** Mobilität | TRAGFÄHIG | PS (E1–E8 ✅) | keine Falsifikation; nur Befund (Empfehlungen schon in Offenen Punkten) |
| **15** Medien | TRAGFÄHIG | PS | **Drift-Fix:** „Informations-Kompetenzfilter"/Verbreitungs-Stopp → **SEC-J-Ampel** (Tagging; nur Bot-/Sybil-Amplifikation begrenzt, nie menschliche Rede) |
| **16** Sicherheit | **FALSIFIZIERT → tragfähig** | PS (E6❌+E8❌) | neuer Abschnitt **Governance der Schutzkontingente** (6 Sicherungen: kein Einzel-Kommando, ziviler J-Veto, rein defensiv, KIN-Beobachter, self-dissolving, Probatio-Gate) + Nuklear-Sonderprotokoll |
| **17** Migration | **FALSIFIZIERT → bedingt tragfähig** | PS (E1❌/E6❌/E8❌) | neuer Abschnitt **Migrationssteuerung TRANSITION** (Aufnahme ohne Abweisung, ausbau-getaktet, Netzverteilung, beschleunigter Quell-Rollout); ehrliche Grenze: empirische Modellierung offen |
| **18** Spiritualität | TRAGFÄHIG | PS (E8 ⚠️) | leicht; Holdout querschnittlich → Zusammenführung |
| **19** Psychologie | TRAGFÄHIG | PS (E4 ⚠️) | leicht; Kipppunkt empirisch |
| **20** Werte | TRAGFÄHIG | PS (E4 ⚠️) | **Drift-Fix** „Kompetenzfilter" → SEC-J-Ampel; Trolley→PP |

**Zwei harte Falsifikationen** (16, 17) — beide an **E6/E8** (Übergangs-/Machtvakuum), beide mit etablierten Provolution-Mechanismen geschlossen (rotierender J-Veto-Menschenrat, Distributed Execution, self-dissolving, Probatio-Gate, BK-Garantie, D2-Constraint, KIN-Netzverteilung).

**Drift-Fix (Konsistenz mit Batch 1):** K15 + K20 referenzierten noch den in **Recht & Justiz** ersetzten „Informations-Kompetenzfilter". Auf das **SEC-J-Ampelsystem** harmonisiert (der PF-Gem kannte die Ampel-Lösung nicht). → Künftige Kapitel auf dieselbe Referenz prüfen.

**Neue kapitelübergreifende Kanon-Punkte (für `02_KONSOLIDIERUNG`):**
- **Holdout / aktive Nicht-Kooperation** (16/18/19): einheitliche Antwort — angeboten-nicht-auferlegt + Entzug der Konfliktursachen + Fremdschaden-Schranke + gewaltfreie Deeskalation + (governte) Schutzkontingente nur bei akuter Fremdgefahr.
- **Kipppunkt-Schwelle** (18: 3–5 %, 19: 10 %): Widerspruch → eine empirisch offene Größe, in beiden Kapiteln als solche markiert.

**13/21 ungeprüft:** KAPITEL 13 (Umwelt/Klima) und 21 (Technologie/KI-Rolle) haben keinen PF-Report. 13 überschneidet sich stark mit dem eingereichten Klima-Repo (dort bereits SEC-geprüft); 21 ist klein. **Zur Klärung an Yoka:** bewusst übersprungen oder nachzuliefern?

**Status 14–20:** alle tragfähig bzw. bedingt tragfähig nach eingearbeiteter Nacharbeit. Verifiziert: kein Anker/Rohdump/BOM/Stale-Filter (außer erklärend in Befund-Boxen), Befund-Box in allen 7.

---

# Batch 4 — KAPITEL 22–23 (2026-06-02) · NEUE PF-MODALITÄT

**Wichtig:** Ab hier liefert Yoka die Prüfung aus der **Probatio Familia als Claude-Code-Umsetzung** (PS-Entry 4.0.1) statt aus dem Gemini-Gem. Sie reagiert **anders**: kein einzelnes PASS/FALSIFIZIERT, sondern **PS-Entry → interaktives Chaining** in Sub-Module (PV Veritatis, PT Temporalis, PI Institutionalis, PD, PS-U) mit **abgestuften Verdikten** (UNSUBSTANTIATED · UNCERTAIN · BEDEUTUNGS-DRIFT · DEFIZITÄR · INTEGER). Sie nennt reale Quellen und fragt nach jeder Kette, ob die nächste laufen soll. **Rohläufe:** `99_META/PF_VERLAEUFE_RAW_KAP22-23_2026-06-02.md`.

**Korrektur E-Nummerierung (System-Prompt-Abgleich 2026-06-02):** Der Claude-Code-PF lief zum Zeitpunkt von K22/K23 mit einem **falschen E1–E8-Schema** (E2 Annahmen, E3 Datenlage-kritisch). Maßgeblich ist der Gem: **E2 Problem-Lösungs-Passung · E3 Annahmen explizit (KRITISCH) · E4 Datenlage (nicht-kritisch) · E5 systemische Wirkungen 2./3. Ordnung**. Die ps.md des Repos wurde korrigiert. **Folge für die Vollwerk-Befunde:** Sach-Befunde bleiben gültig, nur die Labels waren verschoben — die **Datenlage-Befunde (kritische Masse, Homo-Contribuens-Evidenz) sind E4/nicht-kritisch**, daher korrekt **kein Falsifikat**. Die Befund-Boxen K22/K23 wurden relabelt. Die Gem-basierten Batches 1–3 nutzten bereits das korrekte Schema — dort kein Änderungsbedarf.

| Kap | PS-Entry | Sub-Module | Eingearbeitete Nacharbeit |
|---|---|---|---|
| **22** Übergang | KEIN FALSIFIZIERT (3 Flags) | E3→PV **UNSUBSTANTIATED** + PT **BEDEUTUNGS-DRIFT** (kritische Masse); E8→PI **DEFIZITÄR** (Übergangsrat) | Kipppunkt **ohne fixe Schwelle** (an Phänomen gebunden); Übergangsrat **Sunset extern getriggert** + Bewertungsmacht-Sicherung; Hochrisiko-Abschaltung **reversibel mit Redundanz** (E6) |
| **23** Motivation | KEIN FALSIFIZIERT (4 Flags) | E2/E3→PV **UNCERTAIN** (Homo Contribuens/Overjustification); E8→PI **DEFIZITÄR** (ZK/HoC-Definitionsmacht) | Homo-Contribuens **ehrlich eingegrenzt** + BK-Firewall; **Drudgery→Rotation** verlinkt (E6); neuer Abschnitt **„Wer definiert Beitrag?"** + Bewertungsmacht-Sicherung |

**Neuer Querschnitts-Baustein:** `02_KONSOLIDIERUNG/BEWERTUNGSMACHT_SICHERUNG.md` — der Claude-PF fand in **22 (Übergangsrat)** und **23 (ZK/HoC)** *denselben* härtesten Befund (wer kontrolliert die Bewertungs-/Definitionsmacht?) mit *identischem* Fix. Statt pro Kapitel neu erfunden, steht der Anti-Vermachtungs-Werkzeugkasten jetzt einmal zentral (sechs Sicherungen) und gilt rückwirkend auch für die E8-Stellen in 01/02/04/05/06/10/16/20.

**Kipppunkt-Inkonsistenz aufgelöst:** Die in Batch 3 (K18/K19) geflaggte Schwellen-Widersprüchlichkeit (3–5 % vs. 10 %) ist über die PV/PT-Kette in K22 **geklärt**: drei Forschungslinien (Chenoweth 2011 / Xie 2011 / Centola 2018) messen drei Phänomene → nicht mitteln, Mechanismus ohne fixe Schwelle, an Phänomen binden. K22 enthält die Kanon-Formulierung; K18/K19 verweisen darauf (in deren Offenen Punkten bereits markiert).

**Nicht gelaufen (PF stoppte bewusst):** K22 Ketten C (E6 via PD, Institutionen-Übergabeprozess) + D (Maßnahmen PS-U). Als „Vertiefung, nicht Risiko" eingestuft — offen.

**Status 22–23:** beide nach Nacharbeit tragfähig (kein hartes Veto in der Erstprüfung). Verifiziert: kein Anker/Rohdump/BOM, Befund-Box + Bewertungsmacht-Sicherungs-Referenz in beiden.
**Offen:** KAPITEL 24–25 (+ 13/21 nach Klärung); Score-Konsolidierung; Bewertungsmacht-Sicherung operativ ausdetaillieren → `02_KONSOLIDIERUNG`.

---

# Batch 5 — KAPITEL 24 (2026-06-02) · FUNKTIONSTEST der korrigierten Kaskade

**Besonderheit:** K24 (Eigentum & Besitz) wurde **zweimal** geprüft — einmal vor der ps.md-Korrektur (falsche Kaskade) und einmal danach. Genau hier zeigt sich, dass die Korrektur greift. PF lag **nur im Chat**, nicht als Datei-Dump → separat gesichert: `99_META/PF_VERLAEUFE_RAW_KAP24_2026-06-02.md`.

| Lauf | Kaskade | Ergebnis |
|---|---|---|
| 1. (vor Fix) | „Annahmen" = E2 (nicht-kritisch), „Datenlage" = E3 (kritisch) | **NICHT FALSIFIZIERT**, Routing mit Flags |
| 2. (nach Fix) | „Annahmen explizit" = **E3 (kritisch)**, „Datenlage" = E4 (nicht-kritisch) | **FALSIFIZIERT bei E3** |

→ **Sach-Befund identisch, nur eine Stufe früher und härter gegriffen.** Das ist der gewünschte Effekt der Korrektur — die un-offengelegte Allokations-Annahme wird jetzt bei E3 (Annahme) gefangen, nicht erst bei E8 (Macht).

**Falsifizierender Befund (E3):** drei tragende, *nicht offengelegte* Annahmen — (a) zentrale KI-Allokation funktioniert + nicht kaperbar; (b) kein Commons-Verfall; (c) Zugang senkt Verbrauch (Rebound).

**Nacharbeit eingearbeitet:** neue Sektion **„Tragende Annahmen — offengelegt und abgesichert"**: (a) an die **Bewertungsmacht-Sicherung** gebunden (heilt zugleich das vormalige E8), (b) **Ostrom**-Commons-Stewardship, (c) **Rebound** als offene empirische Frage (Überclaim „verschwinden fast vollständig" → „gehen drastisch zurück, mit Rebound-Vorbehalt"). Score-Drift („vier Dimensionen") → SEC-J harmonisiert.

**Bestätigung des Querschnitt-Bausteins:** Der PF selbst nennt es „derselbe Machtknoten wie in den zwei Kapiteln zuvor" und verweist auf eine „Machtknoten-Sicherung" — exakt die in Batch 4 angelegte `02_KONSOLIDIERUNG/BEWERTUNGSMACHT_SICHERUNG.md`. Sie heilt hier **E3 und E8 auf einen Schlag** → der Baustein ist damit dreifach belegt (22/23/24) und sollte als fester Kanon-Querschnitt geführt werden.

**Status 24:** nach Nacharbeit tragfähig. Verifiziert: kein BOM, Befund-Box + Tragende-Annahmen + BWS/Ostrom/Rebound vorhanden, keine „vier Dimensionen"-Altreferenz.
**Offen:** KAPITEL 25 (+ 13/21 nach Klärung); Bewertungsmacht-Sicherung operativ; Score-Konsolidierung.

---

# Queue — ein kohärenter Cross-Pass (wartet auf PF-Cross-Consistency-Lauf)

**Entscheidung 2026-06-02 (Yoka: „B"):** Statt jetzt parallel zu editieren (Race mit dem aktiven PF-Cross-Lauf), wird **alles in einem Durchgang** nachgezogen, sobald der Cross-Lauf der PF zurück ist. Scope dieses Passes:

1. **K25 Nacharbeit** — roher PF-Dump noch im Kapitel (Befund integrieren + Body-Patches).
2. **K21 Nacharbeit** — roher PF-Dump noch im Kapitel (inkl. Score-Drift „eine Wert-Grundlage (vier Dimensionen)" in dessen Offenem Punkt → SEC-J).
3. **Cross-Findings der PF** einarbeiten (sobald geliefert).
4. **KURZFASSUNG** — altes Score-Modell (nie harmonisiert) → SEC-J + aktuelle Architektur.
5. **K18 / K19 Kipppunkt** — Fließtexte auf die K22-Lösung („Referent statt Zahl", keine fixe Schwelle) nachziehen; aktuell nur in den Offenen Punkten verlinkt, nicht im Body.
6. **K13 (Umwelt/Klima)** — weiterhin ungeprüft (Klärung mit Yoka: bewusst, da = eingereichtes Klima-Paper?).

**Hinweis Falsch-Positive:** Score-/Filter-Treffer in 02/05/06/15/20 sind erklärende Erwähnungen in den Befund-Boxen, **keine** Body-Kollisionen — beim Cross-Abgleich nicht doppelt zählen.

---

# Batch 6 — Cross-Consistency-Pass ausgeführt (2026-06-02)

Der PF-Cross-Lauf (5 parallele Lese-Agenten → Synthese über alle 27 Kapitel gleichzeitig) ist zurück; Report persistiert: `02_KONSOLIDIERUNG/KOLLISIONS-REPORT.md`. Der vereinbarte **B-Pass** ist ausgeführt:

**Integriert (Roh-Dumps + Befunde):** **K25** (TEILBESTANDEN — das Schlüsselkapitel, löst den Machtknoten; PI/PV-Reste eingearbeitet) · **K21** (TRAGFÄHIG, Score-Drift gefixt). Rohläufe: `PF_VERLAEUFE_RAW_KAP21-25_2026-06-02.md`.

**Kollisions-Fixes (Cross-Report):**
- **A1 Harmonie** gestrichen in K21 + K24 (war in K02 bewusst entfernt; Schwester-Kapitel zogen nach).
- **A3 Kipppunkt** — K18 + K19 Fließtexte auf die K22-Lösung („Referent statt Zahl", keine fixe Schwelle) nachgezogen.
- **A4 Filter→Ampel** in K25 (letzte Stale-Referenz auf den ersetzten „Info-Kompetenzfilter").
- **A5 „drei Säulen"** in K25 lokal disambiguiert (Entscheidungsgrundlagen vs. Drei-Säulen-Aufsicht).
- **KURZFASSUNG** Score-Drift → SEC-J + Kontingent-Klassen (B3).
- **A6** K04/K05 auf das **K25-Zwei-Schichten-Modell** als kanonische Auflösung verwiesen (volle Vereinheitlichung → Zusammenführung).

**Neuer Befund aus K25 (konstruktiv):** Die **Bewertungsmacht-Sicherung** muss nicht mehr „erfunden" werden — K25 *spezifiziert* sie (Drei-Säulen-Aufsicht). Die Top-Aufgabe der Zusammenführung verschiebt sich von „bauen" auf „**anwenden**" (Übergangsrat, ZK/HoC, KI-Allokation **und neu: GKR-Soft-Power** — vierfach belegt: 22/23/24/25).

**Offen → Zusammenführung (Kanon-/Architektur-Entscheide, bewusst nicht eigenmächtig gefixt):** A2 (das *eine* kanonische Dimensionsset), A5/A6 global (Benennung + Governance-Vereinheitlichung K04/K05→K25), B1 (Wochenstunden-Zielwert vs. realer Beitrag), B2 (Übergangsrat-Lebensdauer 10–15 vs. 18–20 J), C1 (Zusammenführung = SPOF → terminieren), C2 (CO₂-Saldo durchrechnen).
**Weiterhin ungeprüft:** **K13 (Umwelt/Klima)** — Klärung mit Yoka (= eingereichtes Klima-Paper?).

**→ Damit sind 27/27 Kapitel PF-integriert** — **K13 am 2026-06-02 nachgezogen** (war nur nicht gespeichert; TEILBESTANDEN, heilt den C2-Provenienz-Befund selbst; planetarer Entnahme-Hebel unter die Drei-Säulen-Aufsicht gestellt; Roh-Verlauf `PF_VERLAEUFE_RAW_KAP13_2026-06-02.md`). KURZFASSUNG harmonisiert; Kollisions-Report (doppelt quervalidiert) + Bewertungsmacht-Sicherung im `02_KONSOLIDIERUNG`.

---

# Zusammenführung reconciled (2026-06-02)

Die bestehende `02_KONSOLIDIERUNG/ZUSAMMENFÜHRUNG.md` (vor dem PF-Arc geschrieben) wurde auf den konsolidierten Kanon nachgezogen:
- **§1 Score:** gestaffeltes **Constraint/Veto + ROC** (Motor-Architektur) statt gewichtetem Mittel; **zwei Kontexte** (Beitrag = SEC-J, Allokation = D1–D4-Motor).
- **§3 Gremien:** **Bewertungsmacht-Sicherung** als Querschnitts-Baustein (auf alle Kontrollstellen inkl. GKR/planetarer Hebel); A5-Benennung („Entscheidungsgrundlagen" ≠ „Drei-Säulen-Aufsicht"); A6 K25-Zwei-Schichten als Kanon.
- **§4/§3:** B1 (Wochenstunden = zwei Maße) + B2 (Übergangsrat ~10–15 J, extern getriggert) reconciled.
- **§5 Kipppunkt:** „Referent statt Zahl" (K22) statt der alten „gestaffelt 3–5 %/10 %"-Lesart.
- **§6.1 Gewichte — Anti-Drift-Korrektur:** die alte „von Yoka bestätigt: 0,30/0,30/0,25/0,15"-Behauptung war bereits durch `G4_ENTSCHEIDUNGEN` (G4.1: kalibrierbar, nicht dekretiert) überholt → korrigiert; die Zahlen überleben nur als illustrativer Default-Rang. **Nicht stumm überschrieben — Korrektur explizit ausgewiesen.**

**Verbleibender Rest des Werks:** **externer PS:FULL-Re-Lauf** auf den konsolidierten Gesamtstand (ersetzt die Self-Audits) — der einzige verbleibende Schritt vor öffentlicher Verwendung. *(A6 K04/K05-Vereinheitlichung am 2026-06-03 erledigt; C2 am 2026-06-03 erledigt — dynamisches CO₂-Zeitmodell `05_CO2_DYNAMIK`: netto-null-fähig, −7 transient; Quelle + Prosa [.md/.txt] synchron.)* Damit ist der Integrations-Arc abgeschlossen.

---

# C2 — CO₂-Saldo dynamisch modelliert (2026-06-03)

Neues Modul `05_CO2_DYNAMIK/` (`co2_dynamik.py` + README). Schließt C2: ein transparentes, deterministisches Zeitmodell (Emissions-Abbau-S-Kurve + Removal mit Sättigungs-Zerfall, drei Szenarien) bestimmt die Lage in der 0…−7-Gt-Spanne über die Zeit.
**Befund (ehrlich, etwas ernüchternd):** **−7 Gt ist kein Dauerzustand**, sondern ein transienter optimistischer Peak (Modell ~−5 Gt um Jahr 25); der **Dauerzustand (J65)** liegt zwischen **netto-null (optimistisch, −0,6 Gt)** und **mäßig netto-positiv (zentral +4,3 / konservativ +8,5)** — dauerhaftes Removal kann den schwer-vermeidbaren Rest nicht unbegrenzt überbieten. **Belastbarer Kern: „netto-null-fähig" statt „CO₂-negativ".**
**Eingearbeitet:** K13 (Heading + Saldo + Offene Punkt + Befund), K07 (3 Stellen), KURZFASSUNG — **plus Prosa** (K07/K13 .md & .txt) gemäß Prosa-Sync-Konvention. Robust ist die *strukturelle* Aussage (Removal-Sättigung vs. Rest), nicht die exakten Jahres-/Gt-Werte (grobes PoC, Falsifikations-Klausel).

---

# Prosa-Sync-Konvention (2026-06-03)

Es gibt `01_KAPITEL/Prosa/` — die Laien-Fließtext-Ableitung jedes Kapitels (`.md` = mit Markdown, `.txt` = markdown-gestrippter Plaintext-Export, inhaltlich identisch, inkl. Befund als Prosa). **Regel:** Kanon-relevante Änderungen an einem Quell-Kapitel müssen in der Prosa-Fassung (beide Formate) nachgezogen werden, sonst driftet die Laien-Fassung. Beim A6-Polish so geschehen (K04/K05 × .md/.txt). Größere Re-Prosa via `md-to-prosa`-Skill; kleine Drift-Fixes surgisch in beiden Formaten.
