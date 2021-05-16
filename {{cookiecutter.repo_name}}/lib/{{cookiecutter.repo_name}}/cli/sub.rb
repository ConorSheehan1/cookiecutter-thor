# frozen_string_literal: true

require '{{ cookiecutter.repo_name }}/cli/base'

module {{ cookiecutter.gem_module }}
  module Cli
    # Example sub command class
    class Sub < Base
      desc 'hello NAME(default=you)', 'says hello'
      method_option :shout, type: :boolean, default: false,
                            desc: 'makes hello louder'
      # @param name [String]
      def hello(name = 'you')
        message = "hello #{name}"
        if options['shout']
          puts(message.upcase)
        else
          puts(message)
        end
      end

      with_friendly_errors([:hello])
    end
  end
end
