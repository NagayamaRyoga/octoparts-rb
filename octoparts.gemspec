# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octoparts/version'

Gem::Specification.new do |spec|
  spec.name          = "octoparts"
  spec.version       = Octoparts::VERSION
  spec.authors       = ["Takayuki Matsubara", "M3, inc."]
  spec.email         = ["takayuki.1229@gmail.com", "platform-dev@m3.com"]
  spec.summary       = %q{ Ruby client for the Octoparts API }
  spec.description   = %q{ Ruby client library for the Octoparts API }
  spec.homepage      = "https://github.com/m3dev/octoparts-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files.reject! {|f| f == 'Gemfile.lock'}
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '> 2.2'
  spec.add_dependency "representable", "~> 3.1.0"
  spec.add_dependency "activesupport", "> 4.0.0"
  spec.add_dependency "faraday"
  spec.add_dependency "multi_json"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "coveralls"
end
