# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wysihtml5x/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "wysihtml5x-rails"
  spec.version       = Wysihtml5x::Rails::VERSION
  spec.authors       = ["Tanel Jakobsoo"]
  spec.email         = ["tanel@fraktal.ee"]
  spec.description   = %q{A wysiwyg5x text editor for Rails assets pipeline}
  spec.summary       = %q{Wysihtml5x (http://edicy.github.io/wysihtml5) text editor for Rails assets pipeline.}
  spec.homepage      = "https://github.com/Edicy/wysihtml5x-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
