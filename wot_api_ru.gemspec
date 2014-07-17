$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wot_api_ru/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wot_api_ru"
  s.version     = WotApiRu::VERSION
  s.authors     = ["Ivan Bondarenko"]
  s.email       = ["bondarenko.dev@gmail.com"]
  s.homepage    = "https://github.com/shved270189/wot_api_ru"
  s.summary     = "Wargaming.net Public API."
  s.description = "Gem for Wargaming.net Public API http://ru.wargaming.net/developers/api_reference ."
  s.license     = "MIT"

  s.extra_rdoc_files = ["README.md"]

  s.files         = `git ls-files -z`.split("\x0")

  s.add_dependency 'rails', '~> 4.1', '>= 4.1.4'
  s.add_dependency "rest_client", '~> 1.7', '>= 1.7.3'

  s.add_development_dependency "sqlite3", '~> 1.3', '>= 1.3.9'
  s.add_development_dependency "rspec-rails", '~> 3.0', '>= 3.0.1'
  s.add_development_dependency "coveralls", '~> 0.7', '>= 0.7.0'
end
