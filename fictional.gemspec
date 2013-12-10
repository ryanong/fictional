# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fictional/version'

Gem::Specification.new do |spec|
  spec.name          = "fictional"
  spec.version       = Fictional::VERSION
  spec.authors       = ["Ryan Ong"]
  spec.email         = ["ryanong@gmail.com"]
  spec.description   = %q{a gem to create sane fake relational data}
  spec.summary       = %q{a gem to create sane fake relational data}
  spec.homepage      = "http://github.com/ryanong/fictional"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "spy"
  spec.add_development_dependency "minitest"
end
