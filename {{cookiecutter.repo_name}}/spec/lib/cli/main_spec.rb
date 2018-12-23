# frozen_string_literal: true

describe {{ cookiecutter.gem_module }}::Cli::Main do
  describe 'version' do
    it 'displays the version in the console' do
      thor_output = capture(:stdout) { subject.class.start(['version']) }
      expect(thor_output).to eq({{ cookiecutter.gem_module }}::VERSION + "\n")
    end
    context 'when version throws an error' do
      before do
        # allow(subject).to receive(:version).and_raise(StandardError)
        # subject.class.with_friendly_errors([:version])

        allow_any_instance_of(subject.class).to receive(:version).and_raise(StandardError)
      end
      xit 'should always show the first line of the error' do
        require 'byebug'
        byebug
        # thor_output = capture(:stdout) { subject.send(:version) }
        thor_output = capture(:stdout) { subject.class.start(['version']) }
        expect(thor_output).to eq("StandardError\n")
      end
    end
  end
end
