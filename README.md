# Organization Management System (oms)
![Continuous Integration](https://github.com/appalachio/oms/actions/workflows/ci.yml/badge.svg?branch=main)

oms (Organization Management System) is a Ruby on Rails based web application designed to help small organizations with their online and technology needs.

## Contributing

Contributions are welcomed! First please review the [Code of Conduct](https://github.com/appalachio/oms/blob/main/CODE_OF_CONDUCT.md).

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

