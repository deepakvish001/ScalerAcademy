# Scheduling rules

A valid interview requires two valid participant email addresses and an end time after the start time.

## Proposed rules

- Minimum duration: 15 minutes
- Maximum duration: 4 hours
- Default duration: 60 minutes
- No participant may have overlapping interviews
- Start and end use the same explicit time zone
- Past slots cannot be newly scheduled

Rules belong in domain services or model validations, not only in browser controls. Every rule needs a model or service test and a clear validation message.
