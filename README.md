# Organization Management System (oms)
![Continuous Integration](https://github.com/appalachio/oms/actions/workflows/continuous_integration.yml/badge.svg?branch=main)
[![Project Linter](https://img.shields.io/badge/code_linter-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-ruby-brightgreen.svg)](https://rubystyle.guide)
[![Rails Style Guide](https://img.shields.io/badge/code_style-rails-brightgreen.svg)](https://rails.rubystyle.guide)

OMS (Organization Management System) is a full stack, Ruby on Rails web application designed specifically to help nonprofits and small organizations meet their online and technology needs. Currently, this includes user management and a content management system (CMS) for their website.

## Contributing

Contributions are welcomed! Please first review the [Code of Conduct](https://github.com/appalachio/oms/blob/main/CODE_OF_CONDUCT.md).

All commits must be signed off with the [Developer Certificate of Origin](https://www.developercertificate.org/) and a valid [commit signature](https://docs.github.com/en/authentication/managing-commit-signature-verification).

### Development Setup

First, clone the repository in your development environment:
```console
git clone git@github.com:appalachio/oms.git
```

Then, enter the project directory and run the setup script:
```console
cd oms/
bin/setup
```

Finally, launch the necessary local servers:
```console
bin/dev
```

### Testing

There are many tests and checks that must pass for your contribution to be accepted. They will automatically be run on all pull requests. Additionally, you can run them locally from within the project's root directory:

```console
bin/test
```


