# frozen_string_literal: true

require '{{ cookiecutter.repo_name }}'
# require all helpers
Dir[File.join(__dir__, 'support', '**', '*.rb')].each do |file|
  require file
end

# only run coverage report outside continuous integration
unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_group 'Library', 'lib/'
  end
end

RSpec.configure do |config|
  config.order = 'random'
  config.include(StdoutHelpers)
end
