# RollerAdmin — Download Page

Static download page for RollerAdmin. See README.md for project structure and release workflow.

## Publishing a new version

When the user says they are publishing a new version and provides a changelog:

1. Add a new `<version-card>` at the top of `<main>` in `index.html`, before any existing `<version-card>`.
2. Use `version="desktop-vX.Y.Z"` and `date="<today in Spanish short format, e.g. '3 jul 2026'>"`.
3. Group items into the appropriate `<changelog-section>` (reuse existing section names and icons: Grupos de invitados / users, Actividades / calendar, Administración general / settings, Voluntarios / user, Anfitriones / home).
4. Write each `<changelog-item>` following the rules below.

## Changelog entries

When adding a new `<version-card>` to `index.html`, write each `<changelog-item>` for a **non-technical user** (coordinators, administrators without a programming background):

- Describe **what the user can now do**, not how it was implemented. Avoid terms like "endpoint", "DTO", "component", "dropdown", "API", "Light DOM", etc.
- Use plain, natural Spanish. Start with the benefit or the action, not the feature name.
- Skip purely internal changes (refactors, internal component variants, API endpoints) unless they have a visible effect for the user. If they do, describe only that visible effect.
- Confirm phrasing and section placement are consistent with the surrounding entries in `index.html`.
