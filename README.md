# cookiecutter-rubygem

This repo contains a cookiecutter template for creating a new Ruby command line gem using thor.

# Installation

```
mkdir ~/.cookiecutters/
git clone $this_repo ~/.cookiecutters/
pip install --user cookiecutter
cookiecutter cookiecutter-ruby-thor-cli
```

The template comes with an installation script which will build and install the generated gem.

```
cd $dir_generated_by_cookiecutter
./script/install.sh
bundle exec rspec
```
