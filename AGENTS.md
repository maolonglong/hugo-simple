# Hugo Simple Theme

This repository is a minimal Hugo theme. Keep changes small and compatible with
Hugo's static, no-JavaScript architecture.

## Validation

- Use `just serve` to preview the example site.
- Use `just build` to build the production site.
- Run `just fmt` after changing templates or styles.
- Run `just check` before handing off changes.

## Constraints

- Do not add JavaScript.
- Use semantic HTML5 in templates and preserve accessibility basics.
- Keep Hugo templates formatted with the repository's Prettier setup.
- Keep CSS changes compatible with the existing `simple.css` plus `style.css`
  bundling in `layouts/baseof.html`.
