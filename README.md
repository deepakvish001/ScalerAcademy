# Interview Scheduler

A focused Ruby on Rails application for coordinating interviews between students and interviewers. It provides a simple workflow to create, review, update, and cancel interview slots while validating participant email addresses and schedule boundaries.

![Ruby](https://img.shields.io/badge/Ruby-2.7.1-CC342D?logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-6.0.3-CC0000?logo=rubyonrails&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue)

## Features

- Create and manage interview schedules
- Capture interviewer and student email addresses
- Record start and end times
- HTML and JSON responses
- Model, controller, and browser-level test foundations
- SQLite-backed local development

## Technology stack

| Layer | Technology |
| --- | --- |
| Backend | Ruby on Rails 6 |
| Database | SQLite |
| Frontend | ERB, SCSS, JavaScript |
| Assets | Webpacker |
| Tests | Minitest, Capybara, Selenium |
| Server | Puma |

## Prerequisites

Install the following before starting:

- Ruby 2.7.1
- Bundler
- Node.js 12 or later
- Yarn
- SQLite 3

Confirm the tools are available:

```bash
ruby --version
bundle --version
node --version
yarn --version
sqlite3 --version
```

## Local setup

1. Clone the repository.

   ```bash
   git clone https://github.com/deepakvish001/ScalerAcademy.git
   cd ScalerAcademy
   ```

2. Install Ruby and JavaScript dependencies.

   ```bash
   bundle install
   yarn install
   ```

3. Prepare the database.

   ```bash
   bin/rails db:create
   bin/rails db:migrate
   bin/rails db:seed
   ```

4. Start the application.

   ```bash
   bin/rails server
   ```

5. Open [http://localhost:3000](http://localhost:3000).

## Running tests

Run the full Rails test suite:

```bash
bin/rails test
```

Run system tests separately:

```bash
bin/rails test:system
```

## Useful commands

| Command | Purpose |
| --- | --- |
| `bin/rails routes` | Display application routes |
| `bin/rails console` | Open the Rails console |
| `bin/rails db:reset` | Recreate and seed the database |
| `bin/rails test` | Run automated tests |
| `bin/webpack-dev-server` | Run the development asset server |

## Project structure

```text
app/
├── controllers/    # Request handling
├── models/         # Domain rules and validations
├── views/          # Server-rendered interface
└── assets/         # Styles and images
config/             # Routes and environment configuration
db/                 # Schema, migrations, and seed data
test/               # Automated tests and fixtures
```

## Troubleshooting

- Run `bundle install` again if a gem cannot be loaded.
- Run `yarn install --check-files` when Webpacker reports missing packages.
- Remove `tmp/pids/server.pid` if Rails says a server is already running.
- Run `bin/rails db:migrate` after pulling database changes.

Additional operational and development guidance is maintained in the `docs/` directory.

## Contributing

Create a focused branch, include tests or documentation where appropriate, and open a pull request describing the problem and the proposed change. See `CONTRIBUTING.md` for the complete workflow.

## Security

Do not commit secrets, credentials, or production data. Report security concerns privately according to `SECURITY.md`.

## License

This project is available under the MIT License.
