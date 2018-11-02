# frozen_string_literal: true

# import all ruby files for this gem
Dir["#{__dir__}/{{ cookiecutter.repo_name }}/**/*.rb"].each do |file|
  require file
end

# Top level module
module {{ cookiecutter.gem_module }}
end
