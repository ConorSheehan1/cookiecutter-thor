# frozen_string_literal: true

require 'spec_helper'

describe {{ cookiecutter.gem_module }} do
  it 'has a version number' do
    expect({{ cookiecutter.gem_module }}::VERSION).not_to be nil
  end
  xit 'has a version function for cli use' do
  end
end
