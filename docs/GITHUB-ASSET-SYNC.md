# GitHub-Synchronisation der Originalgrafiken

Das vollständige Projekt-ZIP enthält 50 kanonische Figuren mit PNGs, außerdem zusätzliche Varianten. Die PNGs wurden über die Chat-GitHub-Anbindung **nicht** hochgeladen. Zum Nachtragen in einem lokalen Git-Checkout das ZIP entpacken und die Originalgrafiken in `assets/reference/characters/` übernehmen.

```bash
git clone https://github.com/Flippo24/velvet-hours.git
cd velvet-hours
# ZIP entpacken, dann den Inhalt von velvet-hours-v0.1/ in den Checkout kopieren
git add assets/reference/characters/
git commit -m "assets: import canonical images for all 50 characters"
git push origin main
```

Die Quelle für den visuellen Identitätsanker ist jeweils das kanonische Original-PNG; Prompts allein gewährleisten keine unveränderte Person.
