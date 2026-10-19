#!/usr/bin/env python3
from pathlib import Path
r=Path(__file__).resolve().parent
s=(r/'src/index.template.html').read_text(encoding='utf-8')
s=s.replace('<link rel="stylesheet" href="../src/styles.css">','<style>'+ (r/'src/styles.css').read_text(encoding='utf-8') +'</style>')
for fn in ('game-data.js','game.js'):
    s=s.replace(f'<script src="../src/{fn}"></script>','<script>'+ (r/'src'/fn).read_text(encoding='utf-8') +'</script>')
(r/'web').mkdir(exist_ok=True)
(r/'web/index.html').write_text(s,encoding='utf-8')
print('Built web/index.html')
