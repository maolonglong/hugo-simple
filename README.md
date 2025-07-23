# Hugo ʕ•ᴥ•ʔ Simple

> [!NOTE]
> **This theme is stable and in maintenance mode.** It is intentionally minimal and considered feature-complete. I am not planning to add new features as I believe in keeping the core functionality lean and focused rather than adding potentially bloated features. If you need additional functionality, the theme is designed for easy extension through three approaches (from simple to complex):
>
> 1. **Custom partials:** Use the provided `custom_head.html`, `custom_body.html`, and `custom_footer.html` hooks
> 2. **Layout overrides:** Hugo's layout precedence allows you to override any theme template in your site's `layouts/` directory
> 3. **Fork the theme:** Create your own version with full customization freedom

[![Minimum Hugo Version](https://img.shields.io/static/v1?label=min-HUGO-version&message=>=v0.146.0&color=blue&logo=hugo)](https://github.com/gohugoio/hugo/releases/tag/v0.146.0)
[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

A [Hugo](https://gohugo.io/)-theme based on [Simple.css](https://simplecss.org/) and [Bear Blog](https://bearblog.dev).

## Features

- No-JavaScript, high performance ⚡
- Table of Contents 📌
- Dark mode 🌗
- SEO friendly 🔍
- Beautiful code highlighting 😻 (thanks [catppuccin/catppuccin](https://github.com/catppuccin/catppuccin))

## Shortcodes

### notice.html

Simple.css supports [showing notices](https://test.simplecss.org/#classes), using the "notice" class. To add a notice to any of your pages, simply use the notice [shortcode](https://gohugo.io/content-management/shortcodes/) like this (Markdown is allowed):

```
{{< notice >}}
Note: Don't forget to star the [hugo-simple](https://github.com/maolonglong/hugo-simple) repository. ❤️
{{< /notice >}}
```

## Customisation

The theme provides partials for customising the `<head>`, `<body>` and `<footer>` of every page. Just copy and paste the partials from the theme to your local `layouts/_partials/` folder.

## Demo Site

[![screenshot](https://raw.githubusercontent.com/maolonglong/hugo-simple/main/images/tn.png)](https://maolonglong.github.io/hugo-simple/)

Source code and **configuration** can be found at [exampleSite](https://github.com/maolonglong/hugo-simple/tree/main/exampleSite).

## Installation

You can install the theme manually or use the [quickstart template](https://github.com/maolonglong/hugo-simple-starter).

```bash
# Git Submodule (recommend)
git submodule add https://github.com/maolonglong/hugo-simple.git themes/hugo-simple
# Hugo Modules
hugo mod get github.com/maolonglong/hugo-simple
```

## Special Thanks 🎁

- [HermanMartinus/bearblog](https://github.com/HermanMartinus/bearblog)
- [kevquirk/simple.css](https://github.com/kevquirk/simple.css)
- [janraasch/hugo-bearblog](https://github.com/janraasch/hugo-bearblog)
- [clente/hugo-bearcub](https://github.com/clente/hugo-bearcub)
