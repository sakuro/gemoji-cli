# gemoji-cli

:construction: **This project is under active development** :construction:

A command-line interface for searching and displaying emoji characters from your terminal. Built on top of GitHub's [gemoji](https://github.com/github/gemoji) library, this tool provides an easy way to find and use emojis in your daily terminal work.

## Features

- :mag: Search emojis by name, description, or aliases
- :dart: Exact and fuzzy matching support
- :computer: Cross-platform support

## Installation

```bash
gem install gemoji-cli
```

## Usage

### Basic Search

Search for emoji by name:

```bash
gemoji search smile
```

This will display all emojis with "smile" in their name, description, or aliases:

```
😊 smile          - smiling face with smiling eyes
😃 smiley         - grinning face with big eyes
😄 smile_cat      - grinning cat with smiling eyes
...
```

### List All Emojis

Display all available emojis:

```bash
gemoji list
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/sakuro/gemoji-cli.

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
