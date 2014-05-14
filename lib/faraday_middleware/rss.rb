require "faraday_middleware/rss/version"
require 'faraday_middleware/response_middleware'

module FaradayMiddleware
  module Rss
    class ParseRss < ResponseMiddleware
      dependency 'rss'

      define_parser do |body|
        ::RSS::Parser.parse(body)
      end
    end
  end
end

Faraday::Response.register_middleware :rss => FaradayMiddleware::Rss::ParseRss
