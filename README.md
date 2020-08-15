# TopShows

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/top_shows`. To experiment with that code, run `bin/console` for an interactive prompt.

Description: 

This TopShows gem lists the top 5 rated TV shows from imdb.com and then prompts the user to input a list number to learn more about that show.  Using scraped data, this program creates show objects with several attributes, and then prints this information for the user about their selected show.

Pain point:

This app could help the user by providing a simplfied and condensed look at tv show reviews.  Not only does this app provide the user an easy and minimal interface to access show information without navigating through several different URLS, it also cuts down a huge list of 250 shows to only 5 shows, which have been filtered by highest rating, in descending order.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top_shows'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top_shows

## Usage

TODO: Write usage instructions here

After installing gem, run bin/top-shows to trigger a CLI call and begin the program.  Follow printed instructions to continue executing commands.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'tao'/top_shows. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TopShows project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'tao'/top_shows/blob/master/CODE_OF_CONDUCT.md).
