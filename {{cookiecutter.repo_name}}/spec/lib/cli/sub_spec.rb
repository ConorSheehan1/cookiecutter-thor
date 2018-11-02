# frozen_string_literal: true

describe {{ cookiecutter.gem_module }}::Cli::Sub do
  describe 'hello' do
    context 'no name is provided' do
      before { @name = 'you' }
      it 'displays a greeting in the console' do
        expect(STDOUT).to receive(:puts).with("hello #{@name}")
        subject.class.start(['hello'])
      end
      it 'displays all caps when the --shout flag is used' do
        expect(STDOUT).to receive(:puts).with("hello #{@name}".upcase)
        subject.class.start(['hello', '--shout'])
      end
    end
    context 'name is provided' do
      before { @name = 'some_real_name' }
      it 'displays a custom greeting in the console' do
        expect(STDOUT).to receive(:puts).with("hello #{@name}")
        subject.class.start(['hello', @name])
      end
    end
  end
end
