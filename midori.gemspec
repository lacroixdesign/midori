$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "midori/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "midori"
  s.version     = Midori::VERSION
  s.authors     = ["Michael LaCroix"]
  s.email       = ["michael@lacroixdesign.net"]
  s.homepage    = "https://github.com/lacroixdesign/midori"
  s.summary     = "Midori is an extensible content manager."
  s.description = "Midori is an extensible content manager for websites."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
