# Schedule conflict resolution

A conflict occurs when either participant already has an interview where `existing.start < candidate.end` and `existing.end > candidate.start`.

## Behaviour

1. Validate the proposed time range.
2. Query interviewer and student bookings inside one transaction.
3. Exclude the current interview during updates.
4. Reject conflicting writes with a useful message.
5. Offer the nearest available slots without silently changing user input.

Application checks improve feedback; database or locking controls are still needed to prevent concurrent double booking.
