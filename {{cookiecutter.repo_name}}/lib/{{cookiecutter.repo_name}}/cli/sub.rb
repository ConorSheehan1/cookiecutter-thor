# frozen_string_literal: true

require 'thor'

module {{ cookiecutter.gem_module }}
  module Cli
    # Example sub command class
    class Sub < Thor
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
    end
  end
end
