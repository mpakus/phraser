# Phraser

Phraser is a gem that generates unique phrases to use in your app as password, url and tokens

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phraser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phraser

## Usage

Generate array of strings:
``` ruby
TokenPhrase.generate([prefix: proc{}, postfix: proc{}])
> ['red', 'massive', 'elephant']
```

Generate completely string:
```
TokenPhrase.generate_string([separator: '-', prefix: proc{}, postfix: proc{}])
> "1792123-red-massive-elephant-68912223"
```
```
prefix = proc{ 'begin' }
postfix = proc{ 'end' }
TokenPhrase.generate_string(prefix: prefix, postfix: postfix)
> "begin-red-massive-elephant-end"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mpakus/phraser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Phraser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/phraser/blob/master/CODE_OF_CONDUCT.md).

[![CircleCI](https://circleci.com/gh/mpakus/phraser.svg?style=svg)](https://circleci.com/gh/mpakus/phraser)
