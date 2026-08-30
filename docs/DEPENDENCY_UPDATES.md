# Dependency updates

Update Ruby gems, JavaScript packages, and GitHub Actions in small reviewable groups.

## Review checklist

- Read upstream release and security notes.
- Confirm Ruby and Rails compatibility.
- Keep lockfile changes limited to the intended dependency.
- Run unit and system tests.
- Exercise asset compilation.
- Record breaking changes and rollback steps.

Security patches receive priority. Major Rails, Ruby, Webpacker, or database upgrades require a dedicated migration plan rather than automatic merging.
