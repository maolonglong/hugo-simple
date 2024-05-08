+++
title = "og-image"
date = "2024-05-08"
images = ["og-image/kateryna-ivanova-etgAEeMw2wc-unsplash.jpg"]
# OR:
# images = ["https://example.com/foo.png"]
+++

> <https://github.com/gohugoio/hugo/blob/c46d603a027a715db604d39f7a2e68a157ef0001/docs/_vendor/github.com/gohugoio/gohugoioTheme/layouts/partials/opengraph/opengraph.html>

```plaintext {hl_lines=["8-10"]}
.
├── _index.md
└── blog
    ├── _index.md
    ├── emoji-support.md
    ├── markdown-syntax.md
    ├── math-typesetting.md
    ├── og-image
    │   ├── index.md
    │   └── kateryna-ivanova-etgAEeMw2wc-unsplash.jpg
    ├── placeholder-text.md
    └── rich-content.md
```

Page params:

```toml {hl_lines=["3-4"]}
title = "og-image"
date = "2024-05-08"
images = ["og-image/kateryna-ivanova-etgAEeMw2wc-unsplash.jpg"]
# OR:
# images = ["https://example.com/foo.png"]
```

Output HTML:

```html
...

<meta property="og:image" content="http://localhost:1313/og-image/kateryna-ivanova-etgAEeMw2wc-unsplash.jpg">

...
```
