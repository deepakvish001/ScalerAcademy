# Legacy column migration

The current `interviews` table uses `InterviewerMail` and `StudentMail`. Rails conventions use snake_case names.

## Target

- `interviewer_email`
- `student_email`

## Safe sequence

1. Add nullable snake_case columns.
2. Backfill in batches and normalize whitespace/case.
3. Dual-read and dual-write during transition.
4. Verify row counts and null rates.
5. Add database constraints and indexes.
6. Switch reads to the new columns.
7. Remove legacy columns in a later release.

Never rename and deploy application code in one irreversible step. Take a backup and test rollback before production migration.
