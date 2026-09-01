# define error-handling conventions

Explains validation errors, not-found responses, unexpected failures, user-safe messages, and logging boundaries.

## Validation failures

- Keep the behaviour explicit, testable, and appropriate for the current Rails application.
- Prefer small reversible changes and record any operational impact.
- Protect participant data and avoid logging email addresses or credentials.
- Update automated tests and related documentation whenever behaviour changes.

## Missing records

- Keep the behaviour explicit, testable, and appropriate for the current Rails application.
- Prefer small reversible changes and record any operational impact.
- Protect participant data and avoid logging email addresses or credentials.
- Update automated tests and related documentation whenever behaviour changes.

## Unexpected errors

- Keep the behaviour explicit, testable, and appropriate for the current Rails application.
- Prefer small reversible changes and record any operational impact.
- Protect participant data and avoid logging email addresses or credentials.
- Update automated tests and related documentation whenever behaviour changes.

## User messages

- Keep the behaviour explicit, testable, and appropriate for the current Rails application.
- Prefer small reversible changes and record any operational impact.
- Protect participant data and avoid logging email addresses or credentials.
- Update automated tests and related documentation whenever behaviour changes.

## Logging

- Keep the behaviour explicit, testable, and appropriate for the current Rails application.
- Prefer small reversible changes and record any operational impact.
- Protect participant data and avoid logging email addresses or credentials.
- Update automated tests and related documentation whenever behaviour changes.

## Review checklist

- [ ] The change has one clear purpose.
- [ ] Existing interview create, update, view, and delete flows still work.
- [ ] Tests cover changed behaviour where applicable.
- [ ] No credentials or personal production data are included.
- [ ] Documentation reflects the final implementation.
