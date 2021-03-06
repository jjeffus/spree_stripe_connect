# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_stripe_connect'
  s.version     = '0.5.0'
  s.summary     = 'add in stripe connect'
  s.description = 'allow tenants to connect their stripe accounts for payouts'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Melanie Plaza'
  s.email     = 'mplaza@fapl.co'
  s.homepage  = 'https://fapl.co'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus'
  s.add_dependency 'oauth2'
  s.add_dependency 'stripe'
  s.add_dependency 'solidus_gateway'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'

end
