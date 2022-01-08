# noahp.github.io

Personal page.

Uses a crummy home grown static site gen, `gen.sh`, which uses `marked.js` to
convert markdown to html, then shoves a static header and footer around the
output 😅.

```bash
❯ npm install
❯ ./gen.sh

# to view the output
❯ python -m http.server --directory build
```

## TODO

1. fix auto-deploy!
