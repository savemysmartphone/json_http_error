
Gem::Specification.new do |s|
  s.name        = 'json_http_error'
  s.version     = '0.0.9'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = 'DRY module for APIs to render HTTP errors in JSON'
  s.homepage    = 'https://github.com/savemysmartphone/json_http_error'
  s.description = 'DRY module for APIs to render HTTP errors in JSON'
  s.authors     = ["Arnaud 'red' Rouyer"]

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.0.0'
end
