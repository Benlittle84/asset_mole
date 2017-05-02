# Asset Mole

An app to keep track of IT assets within an organisation.

## Ruby version
- 2.3.3
- Rails 5

## System dependencies

## Configuration

## Database creation

To create the database:

```bash
bundle exec rake db:create
```

## Database initialization

To initialize the database apply migrations and run the seeds:

```bash
bundle exec rake db:migrate
bundle exec rake db:seed
```

## Tests

### Unit tests

Rspec is the unit testing framework installed in this project. Tests are executed in the default rake
task, and it is recommended that you run this default rake task as in future code quality checks are run post unit tests which you should keep an eye on while in development.

```bash
bundle exec rake
```
However if you wish to run just the rspec tests locally you may:

```bash
bundle exec rspec spec/                   # Run everything within the spec directory
bundle exec rspec spec/my_test_spec.rb:4  # Run test at line 4 of specific test

```
### Code Quality Checks

Installed are a number of tools to ensure code quality:

- [Rubocop](https://github.com/bbatsov/rubocop)
- [Brakeman](https://github.com/presidentbeef/brakeman)
- [Reek](https://github.com/troessner/reek)
- [Simplecov](https://github.com/colszowka/simplecov)

They are all executed in the default rake task:

```bash
bundle exec rake
```

However they are able to be run individually:

```bash
bundle exec rake rubocop        # runs rubocop static code analyzer only
bundle exec rake reek           # runs reek code smell checker only
bundle exec rake brakeman:check # runs brakeman security analyser
```

Simplecov is invoked on rspec unit test run and the report is saved to `target/reports/coverage`:

```bash
bundle exec rspec spec .
```

Code coverage threshold is currently set to 100%, failure to maintain this will break the build.

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
