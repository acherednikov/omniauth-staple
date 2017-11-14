$:.push File.expand_path("../lib", __FILE__)

require "omniauth-staple/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-staple"
  s.version     = Omniauth::Staple::VERSION
  s.authors     = ["acherednikov"]
  s.email       = ["alex.cherednikov23@gmail.com"]
  s.homepage    = "https://github.com/acherednikov/omniauth-staple"
  s.summary     = "Staple OAuth2 Strategy for OmniAuth"
  s.license     = "MIT"

  s.files = Dir["LICENSE", "Rakefile", "README.md"]

  s.required_ruby_version = ">= 2.0.0"

  s.add_dependency "activesupport", ">= 4.0.0"
  s.add_dependency "activemodel", ">= 4.0.0"
  s.add_dependency "rails" , ">= 4.0.0"
  s.add_dependency "omniauth" , ">= 1.6.1"
  s.add_dependency "omniauth-oauth2", ">= 1.4.0"

  s.add_development_dependency "pg"
end
