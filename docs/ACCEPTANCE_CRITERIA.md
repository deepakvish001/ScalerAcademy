# Core workflow acceptance criteria

## Create interview

- Valid participant emails and an increasing time range create one interview.
- Invalid input keeps entered values and shows field-level errors.
- A conflicting participant schedule is rejected.

## View and update

- Lists are chronological and paginated.
- Detail pages show both participants, time range, zone, and status.
- Updates apply the same validations as creation.

## Cancel

- Authorised users can cancel with a recorded reason.
- Pending reminders are stopped.
- Participants receive one notification.

Each criterion should be represented by an automated model, request, or system test before the workflow is considered complete.
