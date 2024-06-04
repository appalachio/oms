# Organization Management System (oms)
![Continuous Integration](https://github.com/appalachio/oms/actions/workflows/continuous_integration.yml/badge.svg?branch=main)
[![Project Linter](https://img.shields.io/badge/code_linter-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-ruby-brightgreen.svg)](https://rubystyle.guide)
[![Rails Style Guide](https://img.shields.io/badge/code_style-rails-brightgreen.svg)](https://rails.rubystyle.guide)

OMS (Organization Management System) is a full stack, Ruby on Rails web application designed specifically to help nonprofits and small organizations meet their online and technology needs. Currently, this includes a content management system (CMS) and user management.

## Contributing

Contributions are welcomed! Please first review the [Code of Conduct](https://github.com/appalachio/oms/blob/main/code_of_conduct.md).

All commits must be signed off with the [Developer Certificate of Origin](https://www.developercertificate.org/).

### Development Setup

First, clone the repository to your development environment:
```console
git clone git@github.com:appalachio/oms.git
```

Then, run the setup script:
```console
bin/setup
```

### Testing

There are many tests and checks that must pass for your contribution to be accepted. They will automatically be run on all pull requests. Additionally, you can run them locally from within the project's root directory:

```console
bin/test
```

