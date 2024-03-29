# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubymine_minitest_spec/version'

Gem::Specification.new do |spec|
  spec.name          = "rubymine_minitest_spec"
  spec.version       = RubymineMinitestSpec::VERSION
  spec.authors       = ["Matt Conway"]
  spec.email         = ["matt@conwaysplace.com"]
  spec.summary       = %q{Allows running single test in rubymine when using minitest-spec-rails}
  spec.description   = %q{Allows running single test in rubymine when using minitest-spec-rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
