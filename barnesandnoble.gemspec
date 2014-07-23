$:.push File.expand_path("../lib", __FILE__)
require "barnesandnoble/version"

Gem::Specification.new do |gem|
  gem.name        = "barnesandnoble"
  gem.version     = Barnesandnoble::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Diego Marquez", "Hakan Ensari"]
  gem.email       = ["marquez.diego.e@gmail.com"]
  gem.homepage    = "https://github.com/diegomarquez/barnesandnoble"
  gem.summary     = "A Ruby wrapper for Barnes and Noble Product Web Services"
  gem.license     = "MIT"

  gem.files         = Dir.glob("lib/**/*") + %w(LICENSE README.md)
  gem.test_files    = Dir.glob("test/**/*")
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "multi_xml", "~> 0.5.5"
  gem.add_runtime_dependency "excon"

  gem.add_development_dependency "minitest"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "pry"

  gem.required_ruby_version = ">= 1.9"
end
