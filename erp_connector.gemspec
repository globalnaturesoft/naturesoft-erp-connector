$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "naturesoft/erp_connector/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "naturesoft_erp_connector"
  s.version     = Naturesoft::ErpConnector::VERSION
  s.authors     = ["Hung Nguyen",
                  "Luan Pham",
                  "Son Nguyen"]
  s.email       = ["hungnt@hoangkhang.com.vn",
                  "luanpm@hoangkhang.com.vn",
                  "sonnn@hoangkhang.com.vn"]
  s.homepage    = "http://globalnaturesoft.com/"
  s.summary     = "Erp connector of Global Naturesoft."
  s.description = "Erp connector of Global Naturesoft."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0.1"

  s.add_dependency "deface"
end
