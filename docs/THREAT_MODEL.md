# Threat model

The application processes schedules and participant email addresses.

## Primary risks

- Unauthorised schedule access or modification
- Enumeration of interview identifiers
- Cross-site request forgery and script injection
- Formula injection in CSV exports
- Personal data in logs and error pages
- Double booking through concurrent requests

## Controls

Use authentication, record-level authorisation, CSRF protection, output escaping, rate limits, redacted logs, dependency scanning, secure cookies, and transactional conflict checks. Review the model when new integrations or data fields are introduced.
