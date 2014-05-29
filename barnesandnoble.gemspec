# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'barnesandnoble/version'

Gem::Specification.new do |gem|
  gem.name        = 'barnesandnoble'
  gem.version     = BarnesAndNoble::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ['Diego Marquez']
  gem.email       = ['marquez.diego.e@gmail.com']
  gem.homepage    = 'https://github.com/diegomarquez/barnesandnoble'
  gem.summary     = 'A Ruby wrapper for Barnes and Noble Product Web Services'
  gem.license     = 'MIT'

  gem.files         = Dir.glob('lib/**/*') + %w(LICENSE README.md)
  gem.test_files    = Dir.glob('test/**/*')
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'multi_xml', '~> 0.5'
  gem.add_runtime_dependency 'excon', '~> 0'

  gem.add_development_dependency 'minitest', '~> 5'
  gem.add_development_dependency 'rake', '~> 0'
  gem.add_development_dependency 'dotenv-rails', '~> 0.11'
  gem.add_development_dependency 'pry', '~> 0'

  gem.required_ruby_version = '>= 1.9'
end
