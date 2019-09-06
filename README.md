# Spellr

Spell check your source code for fun and occasionally finding bugs

This is inspired by https://github.com/myint/scspell but i wanted a ruby gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spellr', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spellr

## Usage

To start an interactive spell checking session
```
spellr --interactive
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/robotdana/spellr.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## TODO Before release

- [x] handle interactive add
  - [x] handling wordlists per language better
      - [x] global wordlists
      - [x] dynamic wordlist (e.g. built from ruby and YOUR Gemfile and stdlib packages)
      - [x] gem committed semi-dynamic wordlist
      - [x] gem committed static wordlist
- [x] enable/disable
- [x] get marketplacer codebase green
- [x] escape
- [ ] remove default dynamic wordlist nonsense
- [x] fix bugs, have specs
- [x] attempt key recognition
## TODO after release
- [ ] throw instead of raise for flow control
- [ ] attempt subwords again
- [ ] (semi)dynamic js wordlist
- [ ] (semi)dynamic html wordlist
- [ ] (semi)dynamic bash wordlist
- [ ] editor plugins
