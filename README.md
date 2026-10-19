# Velvet Hours

Plattformübergreifendes 18+-2D-Management- und Visual-Novel-Spiel. Der erste spielbare Prototyp läuft lokal im Browser. Figuren und Illustrationen sind fiktiv; sexuelle Handlungen werden in der aktuellen Fassung nicht explizit dargestellt.

## Sofort spielen

`web/index.html` lokal im Browser öffnen. Es ist eine autarke Datei ohne externe Abhängigkeiten.

## Entwicklungsquellen

- `src/game-data.js`, `src/game.js`, `src/styles.css`: bearbeitbare und aus der Standalone-Fassung extrahierte Browserquellen
- `src/index.template.html`, `build.py`: reproduzierbare Standalone-Build-Generierung
- `web/index.html`: standalone spielbarer Build
- `src-tauri/`: vorbereitetes Tauri-2-Grundgerüst, noch nicht nativ getestet
- `docs/characters/`, `data/characters/`: 14 Charakterbögen und maschinenlesbare Prompt-Packs
- `assets/reference/characters/`: kanonische Figuren-Referenzbilder
- `docs/style/`, `docs/prompting/`: Stilbibel und Promptvorlagen

## Entwicklungs- und Laufzeitstatus

- 4 illustrative Innenräume, 6 Figuren im derzeitigen Spielprototypen, 5 Gästetypen, 10 dynamische Ereignisse
- 14 Figuren in der Character Bible: 6 der ersten und 8 der zweiten Welle
- Spielsimulation aktuell in JavaScript, noch nicht in Rust/WASM
- Kein implementierter Multiplayer; kein fertiger nativer Release; keine altersverifizierte Distribution

## Lokal entwickeln

```bash
python3 build.py
python3 -m http.server 5173
# http://localhost:5173/web/
```

Tauri benötigt Rust, npm sowie die Tauri-Voraussetzungen des Zielsystems:

```bash
npm install
npm run tauri:dev
```

## Figurengestaltung

Die Character Bible dokumentiert Name, Aussehen, Accessoires, Kernoutfits, vier Gesichtsausdrücke, Prompt-Anker und Drift-Regeln. Die Referenzbilder sind der primäre Anker für identitätsstabile spätere Szenen. Generative Ergebnisse sind nicht pixelidentisch garantiert.