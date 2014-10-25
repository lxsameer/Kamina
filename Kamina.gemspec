# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Kamina/version'

Gem::Specification.new do |spec|
  spec.name          = 'Kamina'
  spec.version       = Kamina::VERSION
  spec.authors       = ['Sameer Rahmani']
  spec.email         = ['lxsameer@gnu.org']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'http://github.com/Yellowen/Kamina'
  spec.license       = 'MIT'
  gem.executables   = ['bin/kamina']
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'thor'
  spec.add_dependency 'org-ruby'
  spec.add_dependency 'rbtree'
end
