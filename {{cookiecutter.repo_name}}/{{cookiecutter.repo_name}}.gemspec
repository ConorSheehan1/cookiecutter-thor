# frozen_string_literal: true

require File.expand_path('lib/{{ cookiecutter.repo_name }}/version', __dir__)

Gem::Specification.new do |spec|
  spec.name          = '{{ cookiecutter.repo_name }}'
  spec.version       = {{ cookiecutter.gem_module }}::VERSION
  spec.date          = Time.now.strftime('%Y-%m-%d')
  spec.authors       = ['{{ cookiecutter.full_name }}']
  spec.summary       = '{{ cookiecutter.summary }}'
  spec.email         = '{{ cookiecutter.email }}'
  # spec.description   = "TODO: Write a longer description"
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'
  spec.files         = Dir.glob('lib/**/*.rb')
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.executables   = Dir.glob('bin/*').map { |f| File.basename(f) }
  spec.require_path  = 'lib'

  spec.add_runtime_dependency('thor', '~>0.20.0')

  spec.add_development_dependency('rspec', '~> 3.0')
  spec.add_development_dependency('rubocop', '~> 0.57.2')
  spec.add_development_dependency('simplecov', '~> 0.16.1')
  spec.add_development_dependency('yard', '~> 0.9.14')
end
