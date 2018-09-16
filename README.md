# Snap

[![Maintainability](https://api.codeclimate.com/v1/badges/818c40e75cd06a101b79/maintainability)](https://codeclimate.com/github/MeUndies/snap/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/818c40e75cd06a101b79/test_coverage)](https://codeclimate.com/github/MeUndies/snap/test_coverage)

A ruby gem to interact with the Snapfulfil API.

## Installation

Add this line to your application's Gemfile:

```ruby gem 'snap' ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snap

```ruby
Snap.configure do |config|
  config.endpoint = 'https://your-api-endpoint'
  config.username = 'Fred'
  config.password = 'Rogers'
end
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Tests

Once you've setup your environment you can run the tests with `rake spec`. In
order to re-record VCR cassettes you'll want to make sure you have the following
env var set as follows: `VCR=all`.

## Contributing

Bug reports and pull requests are welcome!
