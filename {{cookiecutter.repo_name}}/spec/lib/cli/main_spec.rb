# frozen_string_literal: true

describe {{ cookiecutter.gem_module }}::Cli::Main do
  describe 'version' do
    it 'displays the version in the console' do
      expect(STDOUT).to receive(:puts).with({{ cookiecutter.gem_module }}::VERSION)
      subject.class.start(['version'])
    end
  end
end
