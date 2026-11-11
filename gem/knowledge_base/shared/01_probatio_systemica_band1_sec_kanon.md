# PROBATIO SYSTEMICA

## Band 1 – SEC-Kanon
### Framework-Ebene (neutral, mathematisch, deskriptiv)

**Version:** 2.0
**Datum:** 2026-01-18
**Status:** Kanonisch

---

## VORBEMERKUNG

Dieses Dokument definiert **Probatio Systemica** – das mathematisch fundierte Framework zur systemischen Verifikation. Es ist die **Framework-Ebene** des Gesamtprojekts und bleibt bewusst neutral, objektiv und wertfrei.

**Probatio Systemica ist:**
- Ein dauerhaft justierbares System, das sich selbst begrenzt, selbst verbessert und selbst überprüft
- Ein Werkzeugkasten aus Prinzipien, Regeln und Anwendungen
- Mathematisch fundiert, kulturunabhängig, universell anwendbar

**Probatio Systemica ist NICHT:**
- Eine Ideologie oder Heilsversprechen
- Ein Zielzustand oder normatives Programm
- Spezifisch für eine Anwendung

**Anwendung siehe:** PROVOLUTION (Band 4-5) – die konkrete, zielgerichtete Implementierung für Klimatransformation.

**Cross-Referenz:** MASTERDOKUMENT v2.0, TERMINOLOGY_CHANGELOG.md

---

## 1. DEFINITION: PROBATIO SYSTEMICA

### 1.1 Kernkonzept

**Probatio Systemica** (von lat. *probatio* = Beweis, Prüfung; *systemica* = systemisch) ist ein Framework zur **Verifikation systemischer Maßnahmen** durch das SEC-Prinzip.

**Aus Kipppunkt-Analyse (Msg #1964):**
> "Kein Zielzustand, sondern ein dauerhaft justierbares System, das sich selbst begrenzt, selbst verbessert und selbst überprüft."

**Erweiterte Definition:**
> "Der Weg dorthin. Kein Versprechen, keine Ideologie, sondern ein Werkzeugkasten aus Prinzipien, Regeln und Anwendungen."

---

### 1.2 Charakteristika

**Neutral & Deskriptiv:**
- Keine Werturteile oder Zielvorgaben
- Beschreibt WAS möglich ist, nicht WAS sein SOLL
- Objektiv messbar und verifizierbar

**Mathematisch Fundiert:**
- SEC-Prinzip formalisiert (∀, ∃, Logik)
- Probatio-Logik als Verifikationsverfahren
- Vorhersagekraft durch Präzision

**Universell Anwendbar:**
- Nicht kulturgebunden
- Basiert auf physikalischen Realitäten
- Für verschiedene Kontexte nutzbar

---

## 2. AXIOM 0: MIKRO-MAKRO-VORFILTER (OBLIGATORISCH)

**Version:** 1.0 (Integration 2026-02-04)
**Priorität:** HÖCHSTE – vorgeschaltet vor SEC
**Vollständige Dokumentation:** 07_extension_e0_mikro_makro_vorfilter_v1.0.md

### 2.0.1 Axiom 0

> **Keine SEC-Bewertung ohne Mikro-Makro-PASS.**

**Formal:**
```
∀ M ∈ Maßnahmen: SEC(M) ist nur definiert wenn MM(M) = PASS
```

Wobei:
- MM(M) = Mikro-Makro-Prüfung der Maßnahme M
- PASS = Maßnahme erfüllt alle 14 Bewertungskriterien (Durchschnitt ≥ 1.5)
- FAIL = Maßnahme wird abgelehnt ohne SEC-Bewertung

### 2.0.2 Begründung

Die Mikro-Makro-Prüfung verhindert, dass:
- Systemisch unpassende Maßnahmen hohe SEC-Scores erhalten
- Rechenaufwand für offensichtlich ungeeignete Maßnahmen verschwendet wird
- Mikro-Wirkungen ohne Makro-Einbettung bewertet werden
- Makro-Konzepte ohne konkrete Mikro-Wirkung akzeptiert werden

### 2.0.3 Die zwei Prüfebenen

| Ebene | Prüffrage | Fokus |
|-------|-----------|-------|
| **Mikro** | Was tut eine Einzelhandlung konkret? | Ressourcen, Emissionen, Kosten, Risiken |
| **Makro** | Was bedeutet sie systemisch? | Kompatibilität, Akzeptanz, Politik, Infrastruktur |

### 2.0.4 Die 14 Bewertungskriterien

| Nr | Kriterium | Ebene | Schwellenwert |
|----|-----------|-------|---------------|
| 1 | Wirkungsklarheit | Mikro | ≥ 1 |
| 2 | Ressourcenverfügbarkeit | Mikro | ≥ 1 |
| 3 | Kosteneffizienz | Mikro | ≥ 1 |
| 4 | Risikokontrolle | Mikro | ≥ 1 |
| 5 | Reversibilität | Mikro | ≥ 1 |
| 6 | Vorhersehbarkeit | Mikro | ≥ 1 |
| 7 | Systemkompatibilität | Makro | ≥ 1 |
| 8 | Kulturelle Akzeptanz | Makro | ≥ 1 |
| 9 | Politische Machbarkeit | Makro | ≥ 1 |
| 10 | Infrastrukturabhängigkeit | Makro | ≥ 1 |
| 11 | Wechselwirkungen | Makro | ≥ 1 |
| 12 | Skalierbarkeit | Beide | ≥ 1 |
| 13 | Zeitrahmen | Beide | ≥ 1 |
| 14 | Prävention | Beide | ≥ 1 |

**Bewertungsskala:** 0 (Durchfall), 1 (Schwach), 2 (Ausreichend), 3 (Voll erfüllt)

### 2.0.5 Durchfallbedingungen

```
MM(M) = FAIL wenn:
  (1) Mindestens ein Kriterium = 0 (hartes Durchfallen)
  ODER (2) Durchschnitt aller Kriterien < 1.5
  ODER (3) Mikro-Durchschnitt (K1-6) < 1.5
  ODER (4) Makro-Durchschnitt (K7-11) < 1.5
```

### 2.0.6 Workflow-Integration

```
EINGABE (Maßnahme M)
         ↓
┌─────────────────────────────┐
│ STUFE 0: MIKRO-MAKRO (E0)   │
│ 14 Kriterien prüfen         │
│ MM-Score berechnen          │
└─────────────────────────────┘
         ↓
    MM(M) = PASS?
    ├── NEIN → ABGELEHNT
    │          (Begründung: welche Kriterien?)
    │          (Keine SEC-Bewertung)
    └── JA ↓
┌─────────────────────────────┐
│ STUFE 1: SEC-PRÜFUNG        │
│ S × E × C = Score           │
└─────────────────────────────┘
         ↓
    Aufnahme ins Framework
```

### 2.0.7 Aktivierungsbefehle

| Befehl | Funktion |
|--------|----------|
| `MM:AN` | Starte Mikro-Makro-Analyse (Auto-Modus) |
| `MM:FULL` | Vollprüfung (alle 14 Kriterien explizit) |
| `MM:LITE` | Schnellprüfung (5 kritische Kriterien) |

---

## 3. SEC-PRINZIP (Super Ebenen Check)

Das **SEC-Prinzip** ist das Herzstück von Probatio Systemica. Es definiert drei Bedingungen, die jede Maßnahme erfüllen muss.

### 2.1 S – SUFFICIENT (Ausreichend)

**Definition:**
Jede Maßnahme muss hinreichend sein, um die definierte Wirkung zu erzielen.

**Mathematisch:**
```
∀ M ∈ Maßnahmen: W(M) ≥ W_min
```

Wo:
- M = Maßnahme
- W(M) = Wirkung der Maßnahme M
- W_min = Minimale erforderliche Wirkung

**Bedeutung:**
Eine Maßnahme, die das Ziel nicht erreicht, ist nutzlos – egal wie effizient oder konsistent sie ist.

**Beispiel (neutral):**
- Maßnahme: "10kg CO₂ speichern"
- W_min: "100kg CO₂ speichern"
- → Maßnahme ist NICHT sufficient (W(M) < W_min)

---

### 2.2 E – EFFICIENT (Effizient)

**Definition:**
Jede Maßnahme minimiert Ressourcenverbrauch bei gegebener Wirkung.

**Mathematisch:**
```
min(R(M)) unter der Nebenbedingung W(M) ≥ W_min
```

Wo:
- R(M) = Ressourcenverbrauch der Maßnahme M
- Optimierung erfolgt nur bei ausreichender Wirkung

**Bedeutung:**
Von allen Maßnahmen, die ausreichend sind (S), wähle die ressourcen-sparsamste.

**Beispiel (neutral):**
- Maßnahme A: 100kg CO₂ speichern mit 10 Einheiten Ressource
- Maßnahme B: 100kg CO₂ speichern mit 5 Einheiten Ressource
- → B ist effizienter (weniger R bei gleichem W)

---

### 2.3 C – CONSISTENT (Konsistent)

**Definition:**
Keine Maßnahme darf systemische Widersprüche erzeugen oder mit anderen Maßnahmen kollidieren.

**Mathematisch:**
```
∀ M_i, M_j ∈ Maßnahmen: ¬(M_i ⊥ M_j)
```

Wo:
- M_i ⊥ M_j = Maßnahmen widersprechen sich
- System bleibt in sich widerspruchsfrei

**Bedeutung:**
Eine Maßnahme darf nicht zerstören, was andere aufbauen. Das Gesamtsystem muss kohärent bleiben.

**Beispiel (neutral):**
- Maßnahme A: "Wald aufforsten" (CO₂-Speicherung)
- Maßnahme B: "Selben Wald für Bauholz nutzen"
- → Widerspruch (M_A ⊥ M_B), nicht konsistent

---

## 4. PROBATIO-LOGIK (Verifikation)

### 4.1 Definition

**Probatio** ist das Verfahren zur Verifikation, dass eine Maßnahme SEC-konform ist.

**Formalisierung:**
```
Probatio(M) = Sufficient(M) ∧ Efficient(M) ∧ Consistent(M)

Wenn Probatio(M) = TRUE → M ist probiert (verifiziert)
Wenn Probatio(M) = FALSE → M wird verworfen oder modifiziert
```

---

### 4.2 Prozess

**Schritt 0: Mikro-Makro-Vorfilter (AXIOM 0)**
- Frage: Besteht M die Mikro-Makro-Prüfung?
- Test: Alle 14 Kriterien bewerten, Durchschnitt ≥ 1.5?
- Ergebnis: JA (PASS) → weiter zu Schritt 1 | NEIN (FAIL) → M verwerfen (keine SEC)

**Schritt 1: Hypothese**
Eine Maßnahme M wird vorgeschlagen (hat MM-PASS).

**Schritt 2: Sufficiency-Test**
- Frage: Erreicht M die Mindest-Wirkung W_min?
- Test: W(M) ≥ W_min?
- Ergebnis: JA → weiter zu Schritt 3 | NEIN → M verwerfen

**Schritt 3: Efficiency-Test**
- Frage: Ist M ressourcen-optimal?
- Test: R(M) minimal unter allen M mit W(M) ≥ W_min?
- Ergebnis: JA → weiter zu Schritt 4 | NEIN → M optimieren

**Schritt 4: Consistency-Test**
- Frage: Erzeugt M Widersprüche mit anderen Maßnahmen?
- Test: ∃ M_j: M ⊥ M_j?
- Ergebnis: NEIN → M probiert ✅ | JA → M modifizieren

**Schritt 5: Resultat**
- M ist **probiert** (verifiziert) → kann implementiert werden
- M ist **nicht probiert** → zurück zu Schritt 0 oder 1 (modifizieren)

---

### 4.3 Gültigkeitsregel

**Kanonische Regel:**
> Jede Aussage oder Maßnahme ist nur gültig, wenn sie einen expliziten SEC-Nachweis enthält.

**Das bedeutet:**
- Keine Maßnahme ohne Probatio
- Kein "Hoffen", sondern "Wissen"
- Mathematische Präzision = Vorhersagekraft

---

## 5. NULLPUNKT-PRINZIP

### 5.1 Definition

Das **Nullpunkt-Prinzip** besagt:
> Jede Veränderung beginnt beim IST-Zustand (Nullpunkt), nicht bei einem idealisierten Wunschzustand.

**Bedeutung:**
- Wahrnehmen, was IST (nicht, was sein sollte)
- Realistische Ausgangslage
- Keine Utopien als Startpunkt

---

### 5.2 Anwendung

**Schritt 1: IST-Analyse**
Unverzerrte Beobachtung des aktuellen Systemzustands.

**Schritt 2: Abweichung messen**
Differenz zwischen IST und SOLL (falls SOLL definiert ist in Anwendungskontext).

**Schritt 3: Maßnahmen ableiten**
Von IST ausgehend, nicht von idealem Zielzustand.

**Wichtig:** Im Framework selbst gibt es kein SOLL – das kommt erst in der Anwendung (z.B. Provolution).

---

## 6. FALSIFIKATION & SELBSTKORREKTUR

### 6.1 Falsifikationsprinzip

Probatio Systemica ist **falsifizierbar**:
- Jede Aussage kann widerlegt werden
- Widerlegung führt zu Revision
- Keine dogmatischen Wahrheiten

**Kriterium:**
> Wenn Maßnahme M implementiert wird und W(M) < W_min (trotz Probatio), dann war Probatio(M) falsch.

---

### 6.2 Selbstkorrektur

**Mechanismus:**
1. Maßnahme M wird implementiert
2. Wirkung W(M) wird gemessen
3. Wenn W(M) ≠ W_erwartet → Analyse warum
4. Probatio-Prozess wird angepasst
5. M wird modifiziert oder verworfen

**Lernendes System:**
Probatio Systemica verbessert sich durch Rückkopplung.

---

## 7. MISSBRAUCHSRESISTENZ

### 7.1 Schutz vor Manipulation

**Problem:**
Systeme können manipuliert werden, um vorgegebene Ergebnisse zu rechtfertigen.

**Lösung in Probatio Systemica:**

**Transparenz:**
- Alle Annahmen explizit
- Alle Berechnungen nachvollziehbar
- Alle Entscheidungen dokumentiert

**Objektivität:**
- Messbare Kriterien (W, R)
- Mathematisch prüfbar
- Nicht verhandelbar (TRUE or FALSE)

**Falsifikation:**
- Jede Aussage kann widerlegt werden
- Widerlegung ist erwünscht (verbessert System)
- Keine Immunisierung gegen Kritik

---

### 7.2 Grenzen

**Probatio Systemica schützt NICHT vor:**
- Bewusster Datenfälschung (W(M) falsch messen)
- Manipulation der Zielvorgaben (W_min willkürlich setzen)
- Politischem Missbrauch (System ignorieren)

**Das erfordert:**
- Integrität der Anwender
- Unabhängige Verifikation
- Offenheit der Daten

---

## 8. WERKZEUGKASTEN-KOMPONENTEN

Probatio Systemica stellt modulare Werkzeuge bereit:

### W1: Analysewerkzeuge
- Systemzustands-Erfassung (IST)
- Wirkungsketten-Analyse
- Abhängigkeiten identifizieren

### W2: Entscheidungswerkzeuge
- Prioritätsmatrix (nach SEC-Score)
- Risikoabschätzung
- Szenarien-Vergleich

### W3: Implementierungswerkzeuge
- Schrittweise Einführung (Pilotprojekte)
- Rückkopplungs-Messung
- Fehlerkorrektur-Prozeduren

### W4: Verifikationswerkzeuge
- SEC-Konformitäts-Test
- Konsistenz-Prüfung (keine Widersprüche)
- Wirksamkeits-Nachweis (W(M) messen)

**Siehe:** Band 2 (Entscheidungskarte) für Details.

---

## 9. ANWENDUNG: PROVOLUTION

**Probatio Systemica ist neutral.**
**Es kann für verschiedene Anwendungen genutzt werden.**

**Die erste und wichtigste Anwendung ist PROVOLUTION:**
- Konkrete Implementierung für Klimatransformation
- Normativ, zielgerichtet (Kipppunkt-Kompensation)
- Basiert auf diesem Framework

**Siehe:**
- Band 4: Provolution – Anwendungen
- Band 5: Provolution – Steuerung & Score
- MASTERDOKUMENT v2.0, Teil II

**Wichtig:**
Provolution ist EINE Anwendung. Probatio Systemica könnte auch für andere Kontexte genutzt werden (z.B. Stadtplanung, Unternehmensführung, Gesundheitssysteme).

---

## 10. CROSS-REFERENZEN

**Terminologie:**
- TERMINOLOGY_CHANGELOG.md – Trennung Probatio Systemica / Provolution
- GLOSSARY.md – Definitionen aller Begriffe

**CANON-Module:**
- 02_probatio_systemica_entscheidungskarte.md – Werkzeuge W2
- 03_probatio_systemica_scientific_core.md – Mathematische Grundlagen
- **07_extension_e0_mikro_makro_vorfilter_v1.0.md – Mikro-Makro-Vorfilter (Axiom 0)**

**MASTERDOKUMENT:**
- MASTERDOKUMENT_v2.0.md – Teil II, Abschnitt 2 (Probatio Systemica)

**Anwendung:**
- 04_provolution_band4_anwendungen.md – Konkrete Umsetzung
- 05_provolution_band5_steuerung_und_score.md – SEC-Score-System
- 06_framework_extensions_v1.0.md – Alle Extensions (E0-E6)

**Historischer Kontext:**
- KIPPPUNKT_ANALYSE.md – Nachweis des Wechsels bei Msg #1977
- Chat "Provolution Definition" – Ursprung der Konzepte

---

## 10. VERSIONSGESCHICHTE

**v2.0 (2026-01-18):**
- Umbenennung: "Provolution" → "Probatio Systemica" (Framework-Ebene)
- Definition aus Kipppunkt-Analyse integriert
- SEC-Prinzip mathematisch formalisiert
- Probatio-Logik als Verifikationsverfahren
- Cross-Referenzen zu MASTERDOKUMENT v2.0
- Klarstellung: Framework vs. Anwendung (Provolution)

**v1.0 (ursprünglich):**
- Platzhalter-Dokument
- Verweis auf Canvas-Dokument

---

## 11. SCHLUSS

Probatio Systemica ist ein **mathematisch fundiertes, neutrales Framework** zur Verifikation systemischer Maßnahmen.

Es ist kein Zielzustand, sondern ein **Werkzeugkasten**.
Es ist keine Ideologie, sondern ein **Prüfverfahren**.
Es ist nicht dogmatisch, sondern **lernfähig**.

Die **Probatio-Logik** garantiert:
- Sufficient: Maßnahmen erreichen ihre Wirkung
- Efficient: Ressourcen werden optimal genutzt
- Consistent: Keine Widersprüche entstehen

**Mathematische Präzision = Vorhersagekraft.**

Das Framework ist universell.
Die Anwendung (Provolution) ist spezifisch.

**Auf zum nächsten Band.**

---

**Version:** 2.0
**Status:** Kanonisch
**Datum:** 2026-01-18

**Ende von Band 1 – SEC-Kanon**

(Quelle: Konsolidiert aus MASTERDOKUMENT v2.0, TERMINOLOGY_CHANGELOG.md, Kipppunkt-Analyse)
