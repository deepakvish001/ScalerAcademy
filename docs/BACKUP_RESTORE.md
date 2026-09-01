# Backup and restore

Backups are useful only when restoration is regularly tested.

## Backup

1. Quiesce writes or use a consistent database snapshot.
2. Encrypt the backup in transit and at rest.
3. Record checksum, schema version, timestamp, and retention date.
4. Store copies outside the application host.

## Restore test

Restore into an isolated environment, run migrations only when planned, verify row counts and sample schedules, run the test suite, and document recovery time. Never restore production personal data into an unsecured development environment.
