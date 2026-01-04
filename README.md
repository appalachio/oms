# Organization Management System (oms)
![Continuous Integration](https://github.com/appalachio/oms/actions/workflows/ci.yml/badge.svg?branch=main)

Organization Management System (oms) is a Ruby on Rails, full stack, website designed to help small businesses and nonprofits with their online and technology needs.

## Contributing

Contributions are welcomed! First please review the [Code of Conduct](https://github.com/appalachio/oms/blob/main/CODE_OF_CONDUCT.md).

All commits must be signed off with the [Developer Certificate of Origin](https://www.developercertificate.org/) and a valid [commit signature](https://docs.github.com/en/authentication/managing-commit-signature-verification).

## Development

First, clone the repository in your local environment:
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

## Testing

There are many tests and checks that must pass for changes to be approved and run in production. They will automatically be run on all pull requests. Additionally, you can run them locally from within the project's root directory:

```console
bin/test
```
