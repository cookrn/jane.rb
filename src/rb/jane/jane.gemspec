# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jane/version'

Gem::Specification.new do |spec|
  spec.name          = "jane"
  spec.version       = Jane::VERSION
  spec.authors       = ["Ryan Cook"]
  spec.email         = ["cookrn@gmail.com"]

  spec.summary       = %q{Libraries for Jane the personal distributed computing kernel.}
  spec.description   = %q{Libraries for Jane the personal distributed computing kernel.}
  spec.homepage      = "https://github.com/cookrn/jane.rb"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
