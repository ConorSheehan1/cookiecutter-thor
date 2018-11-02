[![Build Status](https://travis-ci.org/ConorSheehan1/cookiecutter-thor-rubygem.svg?branch=master)](https://travis-ci.org/ConorSheehan1/cookiecutter-thor-rubygem)

This repo contains a [cookiecutter](https://github.com/audreyr/cookiecutter) template for creating a new Ruby command line gem using [thor](https://github.com/erikhuda/thor).

# Installation

```
pip install --user cookiecutter
mkdir ~/.cookiecutters/
git clone https://github.com/ConorSheehan1/cookiecutter-thor-rubygem ~/.cookiecutters/
cookiecutter cookiecutter-ruby-thor-cli
```

The template comes with an installation script which will build and install the generated gem.

```
cd $dir_generated_by_cookiecutter
./script/install.sh
bundle exec rspec
```
