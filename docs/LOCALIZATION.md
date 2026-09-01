# Localization

User-facing text should move from controllers, models, and templates into Rails locale files.

## Conventions

- Use scoped translation keys by feature and view.
- Localise dates and times through Rails helpers.
- Keep validation messages clear and concise.
- Avoid assembling translated sentences from fragments.
- Test missing-translation behaviour.

Email templates, status labels, flash messages, form labels, and accessibility text all belong in the localization plan.
