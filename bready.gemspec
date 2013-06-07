# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bready/version'

Gem::Specification.new do |gem|
  gem.name          = "bready"
  gem.version       = Bready::VERSION
  gem.authors       = ["HeeL, Arsen7"]
  gem.email         = ["parizhskiy@gmail.com"]
  gem.description   = %q{Breadcrumbs}
  gem.summary       = %q{Build customized breadcrumbs with Google rich snippets support}
  gem.homepage      = "https://github.com/autoplenum/bready"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('test-unit', '2.4.3')
  gem.add_development_dependency('shoulda', '2.11.3')
  gem.add_development_dependency('shoulda-matchers', '1.2.0')

end
