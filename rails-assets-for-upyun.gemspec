# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rails-assets-for-upyun"
  s.version     = "0.0.9"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Yin"]
  s.email       = ["layerssss@gmail.com"]
  s.homepage    = "https://github.com/layerssss/rails-assets-for-upyun"
  s.summary     = %q{Rake task to push precompiled assets to Upyun}
  s.description = %q{Rake task to push precompiled assets to Upyun}
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.license       = 'MIT'

  s.add_dependency "rest-client", [">= 1.6.7"]
end
