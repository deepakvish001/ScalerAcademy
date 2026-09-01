# Time-zone handling

Store timestamps in UTC and convert them only at the presentation boundary.

## Rules

- Parse user input using an explicit selected zone.
- Persist `start_time` and `end_time` as UTC-backed Rails timestamps.
- Display the zone abbreviation with every schedule.
- Treat daylight-saving transitions as validation cases.
- Include ISO 8601 timestamps in JSON responses.

## Tests

Cover a normal date, a spring-forward gap, a fall-back duplicate hour, and participants in different zones. Never rely on the host machine's local zone.
