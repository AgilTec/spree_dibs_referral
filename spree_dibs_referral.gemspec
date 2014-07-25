# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_dibs_referral'
  s.version     = '2.4.0.beta'
  s.summary     = 'Referral tracking capability for Spree Commerce'
  # s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'DidItBetter.com Software'
  s.email     = 'tlilley@diditbetter.com'
  s.homepage  = 'http://store.diditbetter.com/'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.4.0.beta'

  s.add_development_dependency 'capybara', '~> 2.4.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.0.2'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
