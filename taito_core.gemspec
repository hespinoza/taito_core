# shared/taito_core/taito_core.gemspec
Gem::Specification.new do |spec|
    spec.name          = "taito_core"
    spec.version       = "0.1.0"
    spec.authors       = ["Héctor / Taito Labs"]
    spec.summary       = "Librería base compartida entre servicios Taito"
    spec.files         = Dir["lib/**/*"]
  
    spec.required_ruby_version = ">= 3.2.3"
  
    spec.add_dependency "jwt"
    spec.add_dependency "faraday"
    spec.add_dependency "activesupport"
  end
  