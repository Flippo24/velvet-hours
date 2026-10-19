# Velvet Hours

Plattformübergreifendes 18+-2D-Management- und Visual-Novel-Spiel. Der erste spielbare Prototyp läuft lokal im Browser. Figuren und Illustrationen sind fiktiv; sexuelle Handlungen werden in der aktuellen Fassung nicht explizit dargestellt.

## Sofort spielen

`web/index.html` lokal im Browser öffnen. Es ist eine autarke Datei ohne externe Abhängigkeiten.

## Entwicklungsquellen

- `src/game-data.js`, `src/game.js`, `src/styles.css`: bearbeitbare und aus der Standalone-Fassung extrahierte Browserquellen
- `src/index.template.html`, `build.py`: reproduzierbare Standalone-Build-Generierung
- `web/index.html`: standalone spielbarer Build
- `src-tauri/`: vorbereitetes Tauri-2-Grundgerüst, noch nicht nativ getestet
- `docs/characters/`, `data/characters/`: 50 Charakterprofile und maschinenlesbare Prompt-Packs
- `assets/reference/characters/`: kanonische Figuren-Referenzbilder
- `docs/style/`, `docs/prompting/`: Stilbibel und Promptvorlagen

## Entwicklungs- und Laufzeitstatus

- 4 illustrative Innenräume, 6 Figuren im derzeitigen Spielprototypen, 5 Gästetypen, 10 dynamische Ereignisse
- 50 Figuren in der Character Bible: 30 bisherige Figuren und 20 neue Service-, Sommer-, Korsett- und Abendkleidfiguren.
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
## Hinweis zu den Originalgrafiken

Die kanonischen PNG-Referenzbilder konnten über die GitHub-Dateischnittstelle noch nicht übertragen werden. Im Repository stehen bereits die Charakterprofile und Prompt-Packs sowie das Bildmanifest unter `assets/reference/characters/README.md`. Das vollständige Projektarchiv einschließlich der PNG-Originale ist separat in der Unterhaltung abrufbar und muss zum vollständigen Asset-Import in das Repository nachgetragen werden.


## Alltags-/Brat-Charaktere

Acht Charaktere mit Identitätsprofilen und Prompts: Elise Rowan, Rosalie Quinn, Ivy Mercer, Nora Vale, Tessa Bloom, Marnie Vale, Juno Mercer, Nora Quinn. Für Elise, Rosalie und Tessa sind zusätzliche Looks/Posen unter `assets/reference/characters/variants/` spezifiziert.

Die 11 neuen PNG-Originalbilder sind im Projekt-ZIP enthalten und **noch nicht auf GitHub**. Die Profile, Prompts und Dateipfade sind im Commit versioniert.

## Erweiterung: 20 Figuren mit Service- und Maid-Outfits

Die Character Bible hat jetzt **50 Figuren**. Dazu kommen Sommer-/Freizeitfiguren, Korsettlooks, kurze Abendkleider sowie acht neue Service- und Zimmerdienstfiguren. Eine zweite Variante für Vivienne Cross ist registriert.

Die Originalbilder (PNG) sind im separat bereitgestellten vollständigen Archiv. Der GitHub-Commit enthält hier **nur Profile, Prompts und Referenzpfade**, nicht die PNG-Dateien. Siehe `docs/GITHUB-ASSET-SYNC.md`.
