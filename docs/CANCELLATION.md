# Interview cancellation

Deletion removes auditability. A mature workflow should retain the interview and record cancellation state.

## Required fields

- Cancellation timestamp
- Actor identifier
- Reason category
- Optional private note

## Flow

Authorise the action, update status atomically, cancel pending reminders, notify participants, and preserve an audit event. Repeated cancellation requests must be idempotent.

Retention and deletion policies still apply to cancelled records.
