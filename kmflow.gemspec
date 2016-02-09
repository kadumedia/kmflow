$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kmflow/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kmflow"
  s.version     = Kmflow::VERSION
  s.authors     = ["kadumedia"]
  s.email       = ["hola@kadumedia.com"]
  s.homepage    = "http://www.kadumedia.com"
  s.summary     = "Permite utilizar el servicio de pagos flow.cl fácilmente"
  s.description = "Permite utilizar el servicio de pagos flow.cl fácilmente"
  s.license     = "MIT"
  
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
