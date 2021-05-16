[![Build Status](https://github.com/ConorSheehan1/cookiecutter-thor-rubygem/workflows/ci/badge.svg)](https://github.com/ConorSheehan1/cookiecutter-thor-rubygem/actions/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repo contains a [cookiecutter](https://github.com/audreyr/cookiecutter) template for creating a new ruby command line gem using [thor](https://github.com/erikhuda/thor).

# Requirements

* python       [![Tested python versions](https://img.shields.io/badge/dynamic/yaml?url=https://raw.githubusercontent.com/ConorSheehan1/cookiecutter-thor-rubygem/master/.github/workflows/ci.yml&label=Tested%20python%20versions&query=$.jobs.build.strategy.matrix.python)](https://github.com/ConorSheehan1/cookiecutter-thor-rubygem/blob/master/.github/workflows/ci.yml#L26)
* ruby         [![Tested ruby versions](https://img.shields.io/badge/dynamic/yaml?url=https://raw.githubusercontent.com/ConorSheehan1/cookiecutter-thor-rubygem/master/.github/workflows/ci.yml&label=Tested%20ruby%20versions&query=$.jobs.build.strategy.matrix.ruby)](https://github.com/ConorSheehan1/cookiecutter-thor-rubygem/blob/master/.github/workflows/ci.yml#L25)
* cookiecutter (tested with 1.6.0)

# Usage

For full cookiecutter instructions see https://github.com/audreyr/cookiecutter#features

To create a new project using this cookiecutter template:

```
pip install --user cookiecutter
cookiecutter gh:ConorSheehan1/cookiecutter-thor-rubygem
```

The template comes with an installation script which will build and install the generated gem.
For example:

```
cookiecutter gh:ConorSheehan1/cookiecutter-thor-rubygem --no-input
cd example_gem
./script/install.sh
example_gem # command line executable should now be available
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
