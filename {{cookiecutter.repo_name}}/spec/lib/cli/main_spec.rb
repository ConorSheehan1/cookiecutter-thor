# frozen_string_literal: true

describe {{ cookiecutter.gem_module }}::Cli::Main do
  describe 'version' do
    it 'displays the version in the console' do
      thor_output = capture(:stdout) { subject.class.start(['version']) }
      expect(thor_output).to eq({{ cookiecutter.gem_module }}::VERSION + "\n")
    end
  end
end
