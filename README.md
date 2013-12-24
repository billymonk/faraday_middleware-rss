# FaradayMiddleware::Rss [![Build Status](https://travis-ci.org/mosaicxm/faraday_middleware-rss.png?branch=master)](https://travis-ci.org/mosaicxm/faraday_middleware-rss)

Simple Faraday middleware that uses RSS::Parser to unobtrusively parse RSS feeds.

## Installation

Add this line to your application's Gemfile:

    gem 'faraday_middleware-rss'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday_middleware-rss

## Usage

```ruby
require 'faraday_middleware/rss'

connection = Faraday.new('http://www.example.com') do |faraday|
  faraday.response :rss

  faraday.adapter  Faraday.default_adapter
end

data = connection.get('/rss')

data.body.items.each do |article|
    puts article.title
end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
