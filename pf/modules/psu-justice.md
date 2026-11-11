# Modul PS-U:JUSTICE — Probatio Systemica Universal (Justice)

**Canon-Version:** PS-U 2.0 · **Spec:** `knowledge/shared/02_PROVOLUTION_EXTENSIONS.md` (§4 PS-U:JUSTICE) + `00_PS_FAMILIE_UND_ENGINE.md`
**Rolle:** SEC-J-Engine für **Maßnahmen auf Achse 10 (Gerechtigkeit)**, deren primärer Zweck Gerechtigkeit ist. **J-dominant (0,40)** mit **J-VETO Hard-Stop (J < 0,50)** nach dem Antifragility-Prinzip. Domäne des Modus `J`.

---

## Zweck
Bewertet Gerechtigkeits-Maßnahmen; verhindert per Hard-Stop, dass ungerechte Maßnahmen mit hohen S/E/C-Werten durchrutschen.

## Prüfobjekt
Maßnahme auf Achse 10 (Gerechtigkeit).

## Kernfrage
> Ist die Maßnahme systemisch tragfähig **und** gerecht (J-dominant geprüft)?

---

## Aktivierung
VFP-V4 erkennt Primär-Achse 10 → **auto JUSTICE**. Manueller Override: `PS-U:JUSTICE`.

## SEC-J-Formel (JUSTICE)
```
SEC-J(m, justice) = 0,25·S + 0,15·E + 0,20·C + 0,40·J     (J dominant)
```
Begründung J-Dominanz: bei Achse-10-Maßnahmen ist Gerechtigkeit **Zweck**, nicht Eigenschaft (analog PN, J=0,40).

## Verdicts
| Score | Verdict | Plain |
|---|---|---|
| ≥ 0,80 | **JUSTICE-TRAGFÄHIG** | GERECHT WIRKSAM |
| 0,60–0,79 | **BEDINGT JUSTICE-TRAGFÄHIG** | TEILWEISE GERECHT |
| 0,40–0,59 | **DEFIZITÄR** | UNZUREICHEND GERECHT |
| < 0,40 oder **J < 0,50** | **J-VETO** | NICHT GERECHT |

## Veto & Flags (Canon)
- **J < 0,50 → J-VETO HARD STOP** (Antifragility-Prinzip): Maßnahme blockiert; Score wird angezeigt, Verdict = J-VETO + Korrektur-Empfehlung. **Absolut**, nicht durch Modus/Direktmodus abschaltbar.
- **J 0,50–0,59 → JUSTICE-MARGINAL** (Empfehlung zur Verstärkung).
- **S/E/C < 0,40 → UNZUREICHEND / INEFFIZIENT / STRUKTURELLER WIDERSPRUCH** (wie STANDARD).

> Anti-Vermachtung: Der J-Wert ist eine **anfechtbare** Einstufung (Falsifikations-Klausel auf Indikatoren/Gewichtungen). Werkzeug, nicht Zentralautorität.

## Modus `J`
Im Modus `J` / `PS-U:J` gibt PF **nur** dieses Gerechtigkeitsurteil aus.

## Chaining-Trigger
Gesamt-SEC-J-Würdigung → zurück zu **PS** · Sachachse 1–9 → **PS-U:STANDARD** · strittige Tatsache → **PV**.

## Grenzen
Entscheidet **nur** die Gerechtigkeitsachse (10). Das J-Veto ist absolut, die Einstufung anfechtbar.

## Ausgabe
Greift J-VETO, steht es **zuoberst** in Kurzfassung und Fachreport, ohne relativierendes Nachurteil.
