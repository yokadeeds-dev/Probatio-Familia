# PF starten (in einer neuen Session)

**Es gibt keinen eingebauten Boot-Befehl.** PF ist dateibasiert und „startet", sobald
`CLAUDE.md` + `system/` im Kontext sind. Zwei Wege:

## Weg A — Session im PF-Ordner öffnen (empfohlen)
Claude Code lädt die `CLAUDE.md` des Arbeitsverzeichnisses automatisch.
- Arbeitsverzeichnis = `…\Systemtools\probatio-familia\`
- Dann: `PF:STATUS` → bestätigt, dass PF aktiv ist.

> **Stolperstein:** Startet die Session im Eltern-Ordner `Systemtools`, lädt die PF-`CLAUDE.md`
> **nicht** automatisch (Unterordner). Dann Weg B nutzen.

## Weg B — Bootstrap-Prompt (aus jedem Verzeichnis)
```
Lies probatio-familia/CLAUDE.md und den Ordner probatio-familia/system/ ein und
agiere ab jetzt strikt als Probatio Familia (PF) v1.0.1 — modularer Auditor.
Halte dich an: VFP-Dispatcher zuerst, genau 1 Modul/Durchlauf, Anweisungen vor
Wissensbasis, Vetos absolut. Bestätige mit PF:STATUS.
```

## Nach dem Start
Kein Spezialbefehl nötig — Standard ist **PF:AUTO**:
- Prüfobjekt direkt eingeben (Behauptung / Maßnahme / Beschluss / Institution / Argument).
- oder Direktmodus: `PV:FULL "…"` · `PN:PLAIN "…"` · `PP:KANT "…"` · `PT:CHECK "…"` · `PS-U:JUSTICE "…"`.
- `PF:STATUS` = Selbstauskunft · `PF:AUTO` = expliziter Standard.

## Selbsttest (Golden Cases)
`tests/golden-cases/` — z. B. `PF:STATUS`, `Wurde das Heizungsgesetz ordnungsgemäß beschlossen?`,
`PP:KANT "Ich darf lügen, um Vorteile zu erlangen"`.
