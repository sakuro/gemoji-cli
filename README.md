# gemoji-cli

:construction: **This project is under active development** :construction:

A command-line interface for converting emoji codes to Unicode characters and listing available emojis. Built on top of GitHub's [gemoji](https://github.com/github/gemoji) library, this tool provides an easy way to work with emojis in your terminal.

## Features

- :arrows_counterclockwise: Convert GitHub-style emoji codes (`:emoji_name:`) to Unicode characters
- :page_facing_up: List all available emojis in Markdown or CSV format
- :computer: Cross-platform support

## Installation

```bash
gem install gemoji-cli
```

## Usage

### Filter Emoji Codes

Convert emoji codes in standard input to Unicode characters:

```bash
echo "Hello :smile: :wave:" | gemoji filter
# Output: Hello 😊 👋
```

This will convert all valid emoji codes (`:emoji_name:`) to their corresponding Unicode characters. Custom emoji codes will remain unchanged.

### List All Emojis

Display all available emojis:

```bash
gemoji list
```

By default, this will output a Markdown-formatted table:

```markdown
| Name | Raw |
|------|-----|
| :smile: | 😊 |
| :wave: | 👋 |
...
```

You can also get the output in CSV format:

```bash
gemoji list --format=csv
```

This will output:

```csv
Name,Raw
:smile:,😊
:wave:,👋
...
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
