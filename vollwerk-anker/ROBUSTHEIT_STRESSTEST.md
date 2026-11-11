# Robustheit & Stresstests — Querschnitts-Baustein

**Stand:** 2026-06-04 · **Status:** Kanon-Konsolidierung (Vollwerk, migrations-fähig) · **Anlass:** Die fünf Provolution-Stresstest-Typen existierten **real, aber verstreut** über Studien, Canon und Kapitel — nie als *ein* Dokument. Eine PF-Synthese fasste sie zusammen; alle fünf Anker sind **gegen die echten Dateien verifiziert** (C_ext-Gate, 2026-06-04), keiner konfabuliert. Dieser Baustein konsolidiert sie an einer Stelle.

---

## Das Prinzip

**Robustheit = das System hält nicht nur in der Theorie, sondern unter realer Belastung.** Provolution prüft das über **fünf komplementäre Stresstest-Typen** — statistisch, systemisch, sozial. Ziel: Schwachstellen *früh* finden und durch Rückkopplungsschleifen + Fail-Safes gegen unvorhersehbare Ereignisse (schwarze Schwäne) absichern. Alle fünf speisen die **Probatio-Kaskade** (besonders E7 Fehlermodi & E4 Annahmen).

---

## Die fünf Stresstest-Typen (Anker verifiziert)

| # | Typ | Prüffrage | Anker (verifiziert) | Befund |
|---|---|---|---|---|
| **1** | **Statistischer 50 %-Stresstest** (PF-E7) | Was, wenn nur die Hälfte umgesetzt wird? | `STUDIES/CO2_BILANZ_2026-05-28/CO2_BILANZ_KOMPLETT.md` §12.5, Szenario S | Erwartungswert (B) **−43,2 Gt**; bei 50 % Umsetzung + 30 % Rebound noch **−14,9 Gt** [−20,5; −9,8] ≈ 27 % → **Teil-Reduktion robust auch bei Halb-Umsetzung** |
| **2** | **Skalierungs-/Replikations-Stresstest** (E1) | Was passiert, wenn **alle** es tun? | `06_CANON/06_framework_extensions_v1.0_SECJ.md` §1 (E1 Replikations-Ebene + RR-Score) | systemischer Test für Ressourcen/Infrastruktur — E-Auto bei Milliarden Stück (Lithium/Netz), veganer Umstieg (Arbeitswelt/Eiweiß): Verwerfungen vorab identifiziert |
| **3** | **Legitimitäts-/Antifragilitäts-Stresstest** | Hält das System sozialen Widerstand aus? | `06_CANON/ANTIFRAGILITY_PRINCIPLE.md` + `01_STRATEGIE/DECISIONS/DEC_2026-05-26_antifragility_sharpening.md` | Gelbwesten (CO₂-Steuer bestünde reine SEC, scheitert an ignoriertem **J**); US-Kohleausstieg ohne gerechten Übergang. **J-Veto (J<0,50)** fängt instabile Maßnahmen vorab ab |
| **4** | **Extremfall-/Inklusions-Stresstest** | Hält das Design am vulnerabelsten Rand? | `01_KAPITEL/KAPITEL_01_Bildung_Lernen.md` Z.42 | Bildung am stärksten denkbaren Extremfall geprüft (**Kind ohne Sprache, ohne Eltern, ohne Schulzugang**) → **bestanden**; Inklusion ist die Belastungsgrenze, an der das Design ausgerichtet ist. *Generalisierbar: jede Domäne am Vulnerabelsten ausrichten* |
| **5** | **Transitions-Stresstest** | Hält die anthropologische Kernprämisse während des Umbaus? | `02_KONSOLIDIERUNG/E4_PROVENANCE_REGISTER.md` (K20) + `PRUEFUNG_KAPITEL_20_Werte_Ethik.md` + `06_PHASEN/DREI-PHASEN-MODELL.md` | „Kooperation wird nach Wegfall des Mangels zum Naturgesetz" / **Homo Contribuens** = **tragende, aber falsifizierbare Prämisse**, *nicht* Universalform (Overjustification, Free-Rider/Latané). Konsequenz: **immer ein Fail-Safe** (Profil b) |

---

## Querbezüge

- **Probatio-Einbettung:** #1 → E7 · #2 → E1/E4 · #3 → E5/J-Veto · #4 → E1-Base-Case · #5 → E4 (Annahmen/Provenance). Die Stresstests sind keine separate Schicht, sondern die Belastungs-Anwendung der Kaskade.
- **Fail-Safe-Prinzip (Profil b)** ist die strukturelle Antwort auf #5: Weil der Menschenbild-Shift unsicher ist, bleibt hinter jeder Phase-2-Maßnahme eine Sicherung (vgl. **Pflege-Rotation** als Fail-Safe hinter der Aufwertung; **Naturanwalt** als Dauerorgan). → `06_PHASEN/PILOT_Pflege.md`, `02_KONSOLIDIERUNG/J_NATURE.md`.
- **Score-Anbindung:** #3 läuft über das J-Veto des `SCORE_MODELL.md`; #1 über die D2-/Bilanz-Achse.

---

## Regel-4-Flag: veraltetes Stresstest-Dokument im Framework-Repo

`Provolution-main/PROVOLUTION_STRESSTEST.md` (**Stand 2026-01-23, v1.0**) ist **Pre-SEC-J**: es nutzt „SEC" im *alten* Sinn (S/E/C = Systemzustand/Umwelt/Kopplung), „P-Score", „Decision Map", „30+ Domänen" — durchweg **überholte Semantik von vor der SEC-J-Wende**. Es ist ein leeres Protokoll-Template mit *einem* vorgefüllten Szenario, **nicht** diese Taxonomie.

→ ✅ **Stale-Marker gesetzt 2026-06-06** (Yoka-Go als einmalige frozen-main-Ausnahme): Dokument trägt jetzt einen SUPERSEDED-Banner oben, der auf diese Konsolidierung verweist. Inhalt unverändert erhalten (Archiv-Wert), aber **nicht zitierfähig**. Dieser Baustein ersetzt es inhaltlich. Eintritt in den ESG-Framework-Canon = separate spätere G4.

---

## Status & Framework-Eintritt

Dieser Baustein ist **Vollwerk-konsolidiert + migrations-fähig**. Drei der fünf Anker liegen im Framework-Canon (main: #1/#2/#3), zwei im Vollwerk (#4/#5) — die Taxonomie ist **repo-übergreifend**. Der Eintritt in die *eingefrorene* Framework-Canon (als konsolidierter Robustheits-Kanon) ist eine **separate spätere G4** (analog `J_NATURE.md` / DEC §12).

## Konsequenz

Wo ein Kapitel Robustheit/Stresstest/„hält das unter Last?" nennt, genügt: *„geprüft gemäß Robustheit-Baustein (02_KONSOLIDIERUNG/ROBUSTHEIT_STRESSTEST.md): fünf Stresstest-Typen, Fail-Safe-Prinzip (Profil b)"* — statt je Kapitel neu zu argumentieren.

---

*KI-Self-Audit-Ableitung, kein externer Peer-Review. Alle fünf Anker am 2026-06-04 gegen die Quelldateien verifiziert (C_ext-Gate — kein Anker behauptet, der nicht zitierbar ist). Schwester-Bausteine: `SCORE_MODELL.md` · `BEWERTUNGSMACHT_SICHERUNG.md` · `J_NATURE.md` · `VERWEIGERUNG_HOLDOUT_KANON.md`.*
