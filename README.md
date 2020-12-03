# JesusGenerator

This program takes the user input for 

1) A Gospel in the Bible(Matthew, Mark, Luke, or John)
2) A chapter in the corresponding book, and
3) a verse number in the corresponding book

and, through getbible.net's API, returns the corresponding verse.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'JesusGenerator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install JesusGenerator

## Usage

The user inputs a Gospel book name, a chapter number, and a verse number. They will recieve the corresponding verse.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/JesusGenerator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/JesusGenerator/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the JesusGenerator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/JesusGenerator/blob/master/CODE_OF_CONDUCT.md).
