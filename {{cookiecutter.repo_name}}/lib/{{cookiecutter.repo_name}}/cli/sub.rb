# frozen_string_literal: true

require 'thor'

module {{cookiecutter.gem_module}}
  module Cli
    # Example sub command class
    class Sub < Thor
      desc 'hello NAME(default=you)', 'says hello'
      def hello(name = 'you')
        puts("hello #{name}")
      end
    end
  end
end
