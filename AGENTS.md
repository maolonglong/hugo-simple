# Hugo Simple Theme - Agent Development Guide

## Build Commands

- `just serve` - Start development server with exampleSite
- `just build` - Build for production (GitHub Pages deployment)
- `just fmt` - Format code (Prettier + Nix treefmt)
- `just check` - Validate formatting and run Nix flake checks
- `bun run fmt` - Format HTML templates and CSS only
- `bun run check` - Check formatting without changes

## Code Style Guidelines

- HTML templates: Use Prettier with go-template parser (99 char line width)
- CSS: Follow Prettier formatting, bracket spacing enabled
- Hugo templates: Use Go template syntax with proper spacing
- File organization: Follow Hugo theme structure (layouts/, assets/, i18n/)
- No JavaScript in this theme - zero JS policy
- Use semantic HTML5 elements
- CSS: Two-layer approach (simple.css + style.css) with bundling in baseof.html

## Key Conventions

- Blog posts in content/blog/ with flat permalink structure
- Internationalization via i18n() function (en, nl, zh supported)
- Code highlighting: Catppuccin Mocha theme, server-side only
- Customization hooks: custom_head.html, custom_body.html, custom_footer.html
- Navigation: .current class for active page highlighting
