# Continuous integration

The CI pipeline validates every pull request before merge.

## Required stages

1. Install the Ruby version declared in `.ruby-version`.
2. Install gems from `Gemfile.lock`.
3. Install JavaScript packages from `yarn.lock`.
4. Prepare the test database with `bin/rails db:prepare`.
5. Run `bin/rails test`.
6. Run security and documentation checks when configured.

## Local parity

Run `bash bin/ci` before pushing. Do not bypass a failing check by weakening assertions. Fix flaky tests by removing shared state and time dependence.

## Pull-request rule

A pull request should remain focused and must not merge while a required check is failing. If infrastructure is unavailable, record the incident and rerun the job after recovery.
