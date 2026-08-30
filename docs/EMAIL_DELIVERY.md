# Interview email delivery

Notifications should be asynchronous, idempotent, and free of sensitive data in logs.

## Events

- Interview created
- Schedule changed
- Interview cancelled
- Reminder due

## Delivery flow

Persist the interview first, enqueue a job after commit, render both HTML and text parts, and record a delivery identifier. Retry transient provider failures with backoff; permanent address failures require operator review.

Do not expose one participant's address to another without a clear product requirement and consent.
