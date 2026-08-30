# Container development

Containers provide a repeatable optional environment for the Rails application.

## Start

```bash
docker compose build
docker compose run --rm web bin/rails db:prepare
docker compose up web
```

Open http://localhost:3000 after the server becomes ready.

## Test

```bash
docker compose run --rm -e RAILS_ENV=test web bin/rails test
```

## Data and secrets

The local SQLite database stays inside the mounted project directory. Never bake credentials into the image or commit a real `.env` file. Production should use a managed database and a dedicated secret store.

## Rebuild

Rebuild after changing Ruby, system packages, the Gemfile, or JavaScript dependencies:

```bash
docker compose build --no-cache web
```
