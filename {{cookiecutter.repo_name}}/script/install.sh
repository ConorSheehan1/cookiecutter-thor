#!/bin/bash

# remove any old versions of the gem
# without this if multiple versions of the gem are built the install step
# won't work since ./{{cookiecutter.repo_name}}-*.gem will refer to more
# than one gem
find ./ -name '{{cookiecutter.repo_name}}-*.gem' -delete

# install dependencies, build and install the gem
bundle install
gem build {{cookiecutter.repo_name}}.gemspec
gem install ./{{cookiecutter.repo_name}}-*.gem
