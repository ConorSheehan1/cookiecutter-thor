# frozen_string_literal: true

require '{{ cookiecutter.repo_name }}/cli/base'
require '{{ cookiecutter.repo_name }}/cli/sub'

module {{ cookiecutter.gem_module }}
  module Cli
    # Example thor cli entrypoint class
    class Main < Base
      # example of calling a class using a subcommand
      desc 'sub SUBCOMMAND ...ARGS', 'example subcommand'
      subcommand 'sub', {{ cookiecutter.gem_module }}::Cli::Sub

      desc 'version', 'show the current version of the gem'
      # @return [String] current version
      def version
        puts({{ cookiecutter.gem_module }}::VERSION)
        {{ cookiecutter.gem_module }}::VERSION
      end

      # aliases for cli arguments
      map '-v'        => 'version'
      map '--version' => 'version'
      map '--help'    => 'help'
      map '-h'        => 'help'

      with_friendly_errors([:version])
    end
  end
end
