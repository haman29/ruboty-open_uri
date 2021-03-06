# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/open_uri/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-open_uri"
  spec.version       = Ruboty::OpenUri::VERSION
  spec.authors       = ["Kyohei Hamada"]
  spec.email         = ["kyohei.hamada@gmail.com"]

  spec.summary       = "Ruboty plugin to response body gived a uri."
  spec.homepage      = "http://github.com/haman29/ruboty-open_uri"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
