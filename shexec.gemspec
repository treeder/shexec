# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shexec/version'

Gem::Specification.new do |spec|
  spec.name          = "shexec"
  spec.version       = Shexec::VERSION
  spec.authors       = ["Travis Reeder"]
  spec.email         = ["treeder@gmail.com"]

  spec.summary       = "Library to help writing shell scripts in Ruby."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/treeder/shexec"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
