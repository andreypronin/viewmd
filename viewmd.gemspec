# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viewmd/version'

Gem::Specification.new do |spec|
  spec.name          = "viewmd"
  spec.version       = Viewmd::VERSION
  spec.authors       = ['moonfly (Andrey Pronin)']
  spec.email         = ['moonfly.msk@gmail.com']
  spec.summary       = %q{Command line tool for viewing Markdown files (GitHub Markup) in a browser}
  spec.description   = %q{Command line tool for viewing Markdown files (GitHub Markup) in a browser}
  spec.homepage      = 'https://github.com/moonfly/viewmd'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.rdoc_options = ['--charset=UTF-8']
  spec.extra_rdoc_files = %w[README.md CONTRIBUTORS.md LICENSE.md]
  
  spec.add_dependency 'github-markup', '>= 1.3'
  spec.add_dependency 'launchy', '>= 2.4'
  spec.add_dependency 'github-markdown', '>= 0.6'
  
  spec.add_development_dependency "bundler", ">= 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'coveralls'
end
