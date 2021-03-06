# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'barnesandnoble/version'

Gem::Specification.new do |gem|
  gem.name        = 'barnesandnoble'
  gem.version     = Barnesandnoble::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ['Diego Marquez', 'Hakan Ensari']
  gem.email       = ['marquez.diego.e@gmail.com']
  gem.homepage    = 'https://github.com/diegomarquez/barnesandnoble'
  gem.summary     = 'A Ruby wrapper for Barnes and Noble Product Web Services'
  gem.license     = 'MIT'

  gem.files         = Dir.glob('lib/**/*') + %w[LICENSE README.md]
  gem.test_files    = Dir.glob('test/**/*')
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'excon'
  gem.add_runtime_dependency 'multi_xml'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'rake'

  gem.required_ruby_version = '>= 2.3'
end
