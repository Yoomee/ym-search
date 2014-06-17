$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_search/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_search"
  s.version     = YmSearch::VERSION
  s.authors     = ["Matt Atkins", "Ian Mooney", "Si Wilkins"]
  s.email       = ["matt@yoomee.com", "ian@yoomee.com", "si@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Summary of YmSearch."
  s.description = "Description of YmSearch."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "ym_core", "~> 1.0"
  s.add_dependency "thinking-sphinx", "~>2.0.10"
  s.add_development_dependency 'ym_tools', '~> 0.1.1'
  s.add_development_dependency "geminabox"

end
