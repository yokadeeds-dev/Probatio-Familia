# PF-Verlauf (Rohfassung, verbatim) — KAPITEL 24 Eigentum & Besitz

**Gesichert:** 2026-06-02 · **Besonderheit:** Re-Lauf auf dem **korrigierten Runtime** (Claude-Code-Probatio nach ps.md-Fix). Derselbe Audit war zuvor mit der *falschen* E-Kaskade gelaufen (Ergebnis damals: NICHT FALSIFIZIERT). Mit korrekter Kaskade: **FALSIFIZIERT bei E3** — die Sach-Befunde identisch, nur eine Stufe früher und härter gegriffen. Dies ist der Funktionstest der Korrektur.

```text
■ Routing
  Modul: PS — Probatio Systemica (Entry, 4.0.1)   |   Modus: PF:AUTO
  Grund: VFP-V0 = System-Entwurf (Ressourcen/Eigentum). PS prüft E1–E8.

■ Kurzfassung (PLAIN)
Mit der korrigierten Kaskade fällt das Urteil härter aus als beim ersten Mal — und das ist korrekt, nicht zufällig. Der Entwurf ist hervorragend gebaut und ungewöhnlich selbst-bewusst (er löst seine eigenen Kanten). Aber er steht und fällt mit einer tragenden Annahme — „ein intelligentes, KI-gesteuertes System verteilt Material nach Bedarf" —, die im Text als gelöst vorausgesetzt, nicht als Annahme offengelegt wird. Dass eine solche zentrale Allokation funktioniert und nicht kaperbar bleibt, ist die riskanteste Wette des ganzen Kapitels — und sie taucht weder im Fließtext als Annahme noch in den „Offenen Punkten" auf.
Da „Annahmen explizit" eine kritische Kaskaden-Stufe ist (E3), heißt das: FALSIFIZIERT — im Sinne von „so noch nicht tragfähig", nicht „unmöglich". Der Fix ist klein: die Annahme benennen und begründen.

■ Fachreport (PS-Entry, korrigierte Kaskade)
E0 Mikro-Makro: PASS.
  E1 Zielklarheit            ✅  Fluss/Zugang + Kontingent-Typen + Dauerbesitz-Klasse klar definiert.
  E2 Problem-Lösungs-Passung ⚠️  Eigentum ist Mit-Treiber, aber Allokations-/Machtlogik ist die tiefere Ursache → teils symptomnah.
  E3 Annahmen explizit       ❌  KRITISCH GERISSEN. Tragende, NICHT offengelegte Annahmen:
                                 (a) ein zentrales KI-Allokationssystem funktioniert + bleibt nicht-kaperbar;
                                 (b) nicht-besessenes Material wird gepflegt (kein Commons-Verfall);
                                 (c) Zugang senkt Verbrauch (Rebound nicht adressiert).
                                 (a) wird als gelöst vorausgesetzt — weder als Annahme noch als Offener Punkt markiert.
  ── Kaskaden-Abbruch bei E3 (kritisch) — E4–E8 werden nicht mehr formal bewertet ──

VERDICT: FALSIFIZIERT (NICHT TRAGFÄHIG — wie spezifiziert)
  Grund: kritische Stufe E3 (Annahmen explizit) nicht bestanden.

Delta zum ersten Audit (Ehrlichkeit):
Erster Lauf (falsche Kaskade): „Annahmen" lag auf E2 (nicht-kritisch), „Datenlage" auf E3 (kritisch)
   → Ergebnis damals: NICHT FALSIFIZIERT, Routing mit Flags.
Jetzt (Canon-korrekt):        „Annahmen explizit" = E3 (KRITISCH), „Datenlage" = E4 (nicht-kritisch)
   → Ergebnis: FALSIFIZIERT bei E3.
Die Sach-Befunde sind identisch — nur greift PF sie jetzt EINE STUFE FRÜHER und HÄRTER ab.

Remediation (FALSIFIZIERT → TRAGFÄHIG):
1. Die Annahme (a) explizit als Annahme deklarieren UND begründen/absichern — konkret mit dem
   Anti-Vermachtungs-Werkzeugkasten: föderale/distribuierte Allokation, offener auditierbarer
   Algorithmus, „Bedarf"-Definition partizipativ + anfechtbar, Fail-Safe-Degradationsmodi.
2. Annahme (b) Stewardship: Commons-Governance nach Ostrom benennen (Grenzen/Monitoring/Sanktion).
3. Annahme (c) Rebound: als offene empirische Frage aufnehmen (statt „verschwindet fast vollständig").
→ Sind (a)–(c) als begründete Annahmen offengelegt, besteht E3, und die Prüfung routet weiter
  zu PV (Verbrauchs-Evidenz) und PI (Allokations-Capture) — wie im ersten Audit charakterisiert.

■ PF-Trace
"Eigentum & Besitz" → VFP-Dispatcher [System-Entwurf] → PS → E3 ❌ → FALSIFIZIERT (Kaskaden-Abbruch, kein Routing)

Synthese: Es ist derselbe Machtknoten wie in den zwei Kapiteln zuvor (zentrale Allokations-/Bewertungs-/Übergangsmacht, gesichert durch Absicht statt Mechanismus) — aber die Kaskaden-Korrektur lässt PF ihn jetzt schon bei E3 als un-offengelegte Annahme fangen, nicht erst bei E8. Bestätigt den Memory-Befund [[pf-audit-machtknoten]]: die „Machtknoten-Sicherung" als Querschnitts-Baustein würde hier E3 und E8 auf einen Schlag heilen.
────────────────────────────────────────────
Modi: PF:AUTO · [X]:FULL · [X]:PLAIN · [X]:LITE · [X]:J · [X]:VFP · PV:MMM · PP:KANT · PN:S · PS:E1–E8 · PT:CHECK · PF:HELP
```
