[![Build Status](https://travis-ci.org/ConorSheehan1/cookiecutter-thor-rubygem.svg?branch=master)](https://travis-ci.org/ConorSheehan1/cookiecutter-thor-rubygem)

This repo contains a [cookiecutter](https://github.com/audreyr/cookiecutter) template for creating a new ruby command line gem using [thor](https://github.com/erikhuda/thor).

# Requirements

* python       (tested with 3.6)
* ruby         (tested with 2.3.0)
* cookiecutter (tested with 1.6.0)

# Usage

To create a new project using this cookiecutter template:

```
pip install --user cookiecutter
cookiecutter gh:ConorSheehan1/cookiecutter-thor-rubygem
```

The template comes with an installation script which will build and install the generated gem.

```
cd $dir_generated_by_cookiecutter
./script/install.sh
bundle exec rspec
```

# Testing

```
# unit tests
bundle exec rspec

# linter
bundle exec rubocop

# Generate documentation
bundle exec yard
```

# Credit

Originally forked from https://github.com/tjwp/cookiecutter-rubygem
