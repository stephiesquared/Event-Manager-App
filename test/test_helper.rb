ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

#Default generated file used when running rspec tests on the application, specifies how and when tests should be run. Can also create additional helper methods for testing at the botton of file.

class ActiveSupport::TestCase

  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
