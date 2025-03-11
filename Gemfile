source "https://rubygems.org"

ruby "3.4.2"

gem 'sinatra', '~> 4.1', '>= 4.1.1'
gem 'sinatra-flash', '~> 0.3.0'
gem 'dotenv', '~> 3.1', '>= 3.1.7'
gem 'puma', '~> 6.6'
gem 'rackup', '~> 2.2', '>= 2.2.1'
gem 'sequel', '~> 5.90'
gem 'sidekiq', '~> 8.0', '>= 8.0.1'

group :development, :test do
  gem 'rake', '~> 13.2', '>= 13.2.1'
  gem 'sqlite3', '~> 2.6'
end

group :production do
  gem 'pg', '~> 1.5', '>= 1.5.9'
end
