# Hugo Simple Theme Development Guide

## Project Overview
Hugo Simple is a minimalist Hugo theme based on Simple.css and Bear Blog. It emphasizes performance with zero JavaScript, built-in dark mode, and semantic HTML. The theme is distributed as a Hugo module/submodule for easy integration.

## Architecture & Key Concepts

### Theme Structure
- `layouts/baseof.html` - Base template with CSS bundling logic
- `layouts/_partials/` - Reusable components (header, nav, footer, SEO)
- `layouts/_shortcodes/` - Custom shortcodes (currently just `notice.html`)
- `assets/` - CSS files: `simple.css` (external) + `style.css` (theme-specific)
- `i18n/` - Internationalization files (en, nl, zh supported)
- `exampleSite/` - Working demo site with full configuration

### CSS Strategy
The theme uses a two-layer CSS approach:
1. `simple.css` - External framework fetched via `update-simplecss` just command
2. `style.css` - Theme customizations (navigation, blog layouts, code highlighting)

CSS bundling happens in `baseof.html`:
```go
{{ $simple := resources.Get "simple.css" }}
{{ $style := resources.Get "style.css" }}
{{ $css := slice $simple $style | resources.Concat "bundle.css" | minify }}
```

### Configuration Patterns
- `hugo.toml` - Minimal theme metadata (Hugo version requirements)
- `exampleSite/hugo.toml` - Complete working configuration showing all theme features
- `theme.toml` - Hugo theme registry metadata

## Development Workflows

### Local Development
```bash
just serve  # Runs Hugo server using exampleSite as source
just build  # Builds for GitHub Pages deployment
```

### Code Formatting
```bash
just fmt    # Formats HTML templates and CSS using Prettier + Nix
just check  # Validates formatting without changes
```

### Nix Environment
The project uses Nix flakes for reproducible development:
- `flake.nix` - Defines dev shell with Hugo, Bun, Just
- `treefmt.nix` - Code formatting configuration
- Run `nix develop` to enter the development environment

## Theme-Specific Conventions

### Layout Inheritance
- All pages extend `baseof.html`
- Content types use `single.html`, lists use `list.html`
- Home page uses `home.html` with special blog post listing

### Navigation System
- Menus defined in site config under `[menu.main]`
- `nav.html` automatically highlights current page with `.current` class
- RSS feed link controlled by `hideRSSLink` parameter

### Content Organization
- Blog posts go in `content/blog/`
- Permalink structure: `/:slugorcontentbasename/` (flat URLs like Bear Blog)
- Taxonomies disabled by default for simplicity

### Internationalization
- Use `i18n()` function in templates
- Add new languages by creating `i18n/[code].toml`
- Supported strings: `filtering_for`, `remove_filter`, `no_posts`, `made_with`, `prev_page`, `next_page`

### Code Highlighting
- Uses Catppuccin Mocha theme via `render-codeblock.html`
- Configured in site config: `style = "catppuccin-mocha"`
- No external JS dependencies - server-side highlighting only

## Integration Points

### Customization Hooks
The theme provides three empty partials for user customization:
- `layouts/partials/custom_head.html` - Additional head content
- `layouts/partials/custom_body.html` - Body modifications
- `layouts/partials/custom_footer.html` - Footer extensions

### External Dependencies
- Simple.css framework (updated via `curl` command in justfile)
- Font Awesome SVGs embedded inline (RSS icon in nav)
- Hugo minimum version: 0.146.0

### Deployment
- Built for GitHub Pages via `just build`
- Outputs to `../public` relative to exampleSite
- Base URL configurable for different hosting environments

## Key Files to Understand
- `exampleSite/hugo.toml` - Complete theme configuration reference
- `layouts/baseof.html` - CSS bundling and overall page structure
- `layouts/_partials/nav.html` - Navigation logic and RSS integration
- `justfile` - All available development commands
- `assets/style.css` - Theme-specific styling patterns
