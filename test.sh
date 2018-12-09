# local tests for cookiecutter thor rubygem
# similar to .travis.yml spec, but with linter and docs
cookiecutter . --no-input
cd example_gem
./script/install.sh
bundle exec rspec
bundle exec rubocop
bundle exec yard --list-undoc


# cd ..
# rm -rf example_gem
