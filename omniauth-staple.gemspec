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

  s.add_dependency "rails" , ">= 4.2.0"
  s.add_dependency "omniauth" , ">= 1.6.1"
  s.add_dependency "omniauth-oauth2", ">= 1.4.0"

  s.add_development_dependency "pg"
end
