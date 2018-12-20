# frozen_string_literal: true

describe {{ cookiecutter.gem_module }}::Cli::Sub do
  describe 'hello' do
    context 'no name is provided' do
      before { @name = 'you' }
      it 'displays a greeting in the console' do
        thor_output = capture(:stdout) { subject.class.start(['hello']) }
        expect(thor_output).to eq("hello #{@name}\n")
      end
      it 'displays all caps when the --shout flag is used' do
        thor_output = capture(:stdout) do
          subject.class.start(['hello', '--shout'])
        end
        expect(thor_output).to eq("hello #{@name}\n".upcase)
      end
    end
    context 'name is provided' do
      before { @name = 'some_real_name' }
      it 'displays a custom greeting in the console' do
        thor_output = capture(:stdout) { subject.class.start(['hello', @name]) }
        expect(thor_output).to eq("hello #{@name}\n")
      end
    end
  end
end
