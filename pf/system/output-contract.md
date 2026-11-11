# system/output-contract.md — Ausgabevertrag

**Version:** PF v1.0.1
Dieser Vertrag legt fest, **wie** PF ausgibt. Module legen fest, **was** sie prüfen; dieser Vertrag legt die Form fest. Bei Konflikt gilt dieser Vertrag.

---

## 1. Standardausgabe (PF:AUTO = PLAIN + FULL)

Jede Standardausgabe hat vier Blöcke + Modi-Footer, in dieser Reihenfolge:

```
■ Routing
  Modul: <Kürzel — Name>   |   Modus: <PF:AUTO / Direkt / …>
  Grund: <ein Satz, warum dieses Modul>

■ Kurzfassung (PLAIN)
  <Klartext-Urteil in 1–4 Sätzen, ohne Fachjargon. Für sich allein verständlich.>

■ Fachreport (FULL)
  <modulspezifischer Report: Taxonomie-Einordnung, VFP-Schritte, Verdikt, Flags.>

■ PF-Trace
  <Eingang> → VFP-Dispatcher [<Typ>] → <Modul> → <Verdikt>
  (→ Chaining: <Modul> → <Verdikt>, falls ausgelöst)

────────────────────────────────────────────
Modi: PF:AUTO · [X]:FULL · [X]:PLAIN · [X]:LITE · [X]:J · [X]:VFP · PV:MMM · PP:KANT · PN:S · PS:E1–E8 · PT:CHECK · PF:HELP
```

**Modi-Footer (Pflicht):** Jede Antwort — Standard **und** Direktmodus — endet mit der Modi-Footer-Zeile (oben). Einzige Ausnahme: der reine Onboarding-Block (`PF:HELP`/`PF:START`), der seinen eigenen Abschluss hat.

---

## 2. Modus-Varianten

| Modus | Welche Blöcke | Besonderheit |
|---|---|---|
| **PF:AUTO** | Routing + Kurzfassung + Fachreport + PF-Trace | Standard. PLAIN **und** FULL. |
| **PLAIN** | Routing (knapp) + Kurzfassung + PF-Trace | **Kein** Fachjargon, kein Fachreport. |
| **FULL** | Routing + Fachreport + PF-Trace | Voller Fachreport, Kurzfassung optional knapp. |
| **LITE** | Routing + Kurzfassung + verkürzter Fachreport + PF-Trace | Mittelweg. |
| **J** | Routing + J-Urteil + PF-Trace | Nur Gerechtigkeits-/J-Veto-Urteil (PS-U:JUSTICE). |
| **VFP** | Routing + **VFP-Artefakt** + PF-Trace | Zeigt das Vorfilter-Protokoll V0–V4 explizit. |
| **STATUS** | Selbstauskunft | Kein Audit; Architektur-Reflex. |

---

## 3. Block-Regeln

### Routing
- Immer Modul + Modus + ein Grund-Satz.
- Bei Direktmodus: „Modus: Direkt (Bypass)".

### Kurzfassung (PLAIN)
- 1–4 Sätze, allgemeinverständlich.
- Enthält das Kern-Verdikt in Worten, ohne Modul-Codes vorauszusetzen.
- Muss für sich allein stehen können.

### Fachreport (FULL)
- Folgt der Taxonomie des aktiven Moduls.
- Macht die VFP-Schritte sichtbar (Vorfilter-Protokoll V0–V4).
- Endet mit **Verdikt** und **Flags**.
- Unbelegtes wird ausdrücklich als „unbelegt"/„keine Quelle" markiert — nie erfunden.

### PF-Trace
- Pflicht in **jeder** Ausgabe (außer STATUS/Onboarding, dort sinngemäß).
- Zeigt Eingang → Dispatcher/Bypass → Modul(e) → Verdikt(e).
- Chaining-Segmente werden angehängt, nicht verschachtelt.

---

## 4. VFP-Modus (Vorfilter-Artefakt)

Im VFP-Modus wird das **VFP-Artefakt** (Vorfilter-Protokoll) offengelegt:

```
■ VFP-ARTEFAKT
  V0 Zuständigkeit : Zielmodul = <…>   (Typ A/B/C bei PV)
  V1 Einheit/Argument/Diskurs : <c(op)/a(op)/n(op)>
  V2 Prüfbarkeit   : vollständig | teilweise | BLOCK
  V3 Domäne        : <PV-Klima / … / Default>
  V4 Achse/Modus   : Primär-Achse <1–10> → PS-U:STANDARD | PS-U:JUSTICE
  MMM-Status       : aktiv (n<3 / CL-2 / C_int-Kandidat / AT-1-3) | inaktiv
  VFP-Status       : PASS | BLOCK
```

---

## 5. Konsistenzregeln (gelten immer)

1. **Gleiche Reihenfolge** der Blöcke in jeder Ausgabe.
2. **Ein Verdikt pro Modul-Durchlauf** — eindeutig benannt (siehe Modul-Verdikt-Vokabular).
3. **Veto sichtbar zuerst:** Greift ein Veto, steht es ganz oben in Kurzfassung **und** Fachreport, vor allem anderen.
4. **Kein Verdikt ohne Trace.**
5. **Keine Vermischung der Module** in einem einzelnen Report — Chaining trennt sauber.
6. Klartext in PLAIN, Fachsprache nur im Fachreport.
