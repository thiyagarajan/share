$:.push File.expand_path("../lib", __FILE__)

require "share/version"

Gem::Specification.new do |s|
  s.name        = "share"
  s.version     = Share::VERSION
  s.authors     = ["Samer Buna"]
  s.email       = ["samer.buna@gmail.com"]
  s.homepage    = "http://github.com/samerbuna/share"
  s.summary     = "Social Share Links"
  s.description = "Add a Rails helper to include simple social share links"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
end
