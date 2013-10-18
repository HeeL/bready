# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bready/version'

Gem::Specification.new do |gem|
  gem.name          = "bready"
  gem.version       = Bready::VERSION
  gem.authors       = ["HeeL"]
  gem.email         = ["parizhskiy@gmail.com"]
  gem.description   = %q{Bready is a tool for building breadcrumbs}
  gem.summary       = %q{Build customized breadcrumbs, using Google Rich Snippets}
  gem.homepage      = "https://github.com/heel/bready"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('test-unit', '2.4.3')
  gem.add_development_dependency('shoulda', '2.11.3')
  gem.add_development_dependency('shoulda-matchers', '1.2.0')

end
