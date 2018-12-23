# frozen_string_literal: true

require 'thor'

module {{ cookiecutter.gem_module }}
  module Cli
    # Example thor cli entrypoint class
    class Base < Thor
      class_option :trace, type: :boolean, desc: 'show full backtrace'

      no_commands do
        # provide before hook for instance methods e.g. connect to database before certain commands
        # @param [Array] method_names, array of instance method names
        def self.before_instance_methods(method_names)
          method_names.each do |method_name|
            m = instance_method(method_name)
            define_method(method_name) do |*args, &block|
              yield
              m.bind(self).call(*args, &block)
            end
          end
        end

        # let handle_error control how users see errors
        # @param [Array] method_names
        def self.with_friendly_errors(method_names)
          method_names.each do |method_name|
            m = instance_method(method_name)
            define_method(method_name) do |*args, &block|
              begin
                m.bind(self).call(*args, &block)
              rescue StandardError => ex
                self.class.handle_error(options, ex)
              end
            end
          end
        end

        # default implementation of handle_error
        # @param [Hash] options
        # @param [Error] error
        def self.handle_error(options, error)
          # always show the title of the error
          puts(error)
          # show the full trace if --trace is included
          error.backtrace.each { |b| puts(b) } if options['trace']
        end
      end
    end
  end
end
