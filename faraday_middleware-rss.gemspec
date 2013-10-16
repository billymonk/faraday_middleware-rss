# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_middleware/rss/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday_middleware-rss"
  spec.version       = FaradayMiddleware::Rss::VERSION
  spec.authors       = ["Billy Monk"]
  spec.email         = ["billy.monk@mosaic.com"]
  spec.description   = %q{Faraday response middleware for handling RSS feeds}
  spec.summary       = %q{Faraday response middleware for handling RSS feeds}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday_middleware", ">= 0.8.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-rcov"
end
