require 'simplecov'

SimpleCov.start 'rails' do
  coverage_dir 'target/reports/coverage'
  add_filter '/spec/'
  add_filter '/config/'
  add_filter '/lib/'

  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Helpers', 'app/helpers'
  add_group 'Mailers', 'app/mailers'
  add_group 'Views', 'app/views'
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

SimpleCov.at_exit do
  threshold = 100
  SimpleCov.result.format!

  if SimpleCov.result.covered_percent < threshold
    puts "\nFAIL: Test coverage < #{threshold}, please review your unit tests.\n\n"
    exit(1)
  end
end
