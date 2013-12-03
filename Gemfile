source 'http://rubygems.org'

gem 'rails', '3.2.13'
# TC add
# Also a merge conflict
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'email_spec', ">= 1.4.0"
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem "email_spec", ">= 1.4.0"
  gem "launchy", ">= 2.1.2"
  gem 'capybara'
  gem 'minitest', "4.7.5"
end

gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem 'jquery-rails'
gem "devise", ">= 2.2.3"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "figaro", ">= 0.5.3"
gem "better_errors", ">= 0.3.2", :group => :development
gem "binding_of_caller", ">= 0.6.8", :group => :development

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
