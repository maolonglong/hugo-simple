# Hugo ʕ•ᴥ•ʔ Simple

> [!NOTE]
> **This theme is stable and in maintenance mode.** It is intentionally minimal and considered feature-complete. I do not plan to add new features as I believe in keeping the core functionality lean and focused rather than adding potentially bloated features. If you need additional functionality, the theme is designed to be easily extensible through three approaches (from simple to complex):
>
> 1. **Custom partials:** Use the provided `custom_head.html`, `custom_body.html`, and `custom_footer.html` hooks
> 2. **Layout overrides:** Hugo's layout precedence allows you to override any theme template in your site's `layouts/` directory
> 3. **Fork the theme:** Create your own version with full customization freedom

[![Minimum Hugo Version](https://img.shields.io/static/v1?label=min-HUGO-version&message=>=v0.158.0&color=blue&logo=hugo)](https://github.com/gohugoio/hugo/releases/tag/v0.158.0)

A [Hugo](https://gohugo.io/) theme based on [Simple.css](https://simplecss.org/) and [Bear Blog](https://bearblog.dev).

## Features

- No-JavaScript, high performance ⚡
- Table of Contents 📌
- Dark mode 🌗
- SEO-friendly 🔍
- Code highlighting that follows light/dark mode 😻 (GitHub palette, see below)

## Shortcodes

### notice.html

Simple.css supports [showing notices](https://test.simplecss.org/#classes), using the "notice" class. To add a notice to any of your pages, simply use the notice [shortcode](https://gohugo.io/content-management/shortcodes/) like this (Markdown is allowed):

```markdown
{{< notice >}}
Note: Don't forget to star the [hugo-simple](https://github.com/maolonglong/hugo-simple) repository. ❤️
{{< /notice >}}
```

## Author

`params.author` is optional and can be a plain name (`author = "Jane"`) or a table with `name`, `email` and `fediverse`. The name feeds the `author` meta tag, the email and name feed the RSS feed, and `fediverse` adds a `fediverse:creator` tag.

## Code highlighting

Set `noClasses = false` under `[markup.highlight]` in your site config to highlight code with CSS classes. The theme then ships a light and a dark palette (`assets/chroma.css`, GitHub styles) that switch with the visitor's color scheme. Without it, Hugo falls back to inline styles with a single fixed `style`.

To use other [Chroma styles](https://gohugo.io/quick-reference/syntax-highlighting-styles/), run `just chroma <light-style> <dark-style>` to regenerate `assets/chroma.css`, or override it in your own `assets/` folder.

## Customization

The theme provides partials for customizing the `<head>`, `<body>` and `<footer>` of every page. Just copy and paste the partials from the theme to your local `layouts/_partials/` folder.

## Demo Site

[![screenshot](https://raw.githubusercontent.com/maolonglong/hugo-simple/main/images/tn.png)](https://maolonglong.github.io/hugo-simple/)

Source code and **configuration** can be found at [exampleSite](https://github.com/maolonglong/hugo-simple/tree/main/exampleSite).

## Installation

You can install the theme manually or use the [quickstart template](https://github.com/maolonglong/hugo-simple-starter).

```bash
# Git Submodule (recommended)
git submodule add https://github.com/maolonglong/hugo-simple.git themes/hugo-simple
# Hugo Modules
hugo mod get github.com/maolonglong/hugo-simple
```

## Development

Install [mise](https://mise.jdx.dev/getting-started.html) and clone this repository into a directory named `hugo-simple` so the example site's theme lookup works. Tool versions are pinned in `mise.toml` and `mise.lock`.

```bash
mise trust
mise install --locked
mise exec -- bun install --frozen-lockfile
mise exec -- just check
mise exec -- just build
mise exec -- just serve
```

Run `mise exec -- just fmt` to format TOML, templates, and theme CSS. With mise activated in your shell, you can run `just` directly.

## Special Thanks 🎁

- [HermanMartinus/bearblog](https://github.com/HermanMartinus/bearblog)
- [kevquirk/simple.css](https://github.com/kevquirk/simple.css)
- [janraasch/hugo-bearblog](https://github.com/janraasch/hugo-bearblog)
- [clente/hugo-bearcub](https://github.com/clente/hugo-bearcub)
