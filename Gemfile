# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 6.0.0.rc1'

gem 'pg',   '~> 0.21.0'
gem 'puma', '~> 4.3'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'foreman'
gem 'graphiql-rails', '~> 1.4.11'
gem 'graphql', '~> 1.9.3'
gem 'graphql-batch'

gem 'bootsnap'
group :development, :test do
  gem 'listen'
  gem 'pry'
  gem 'pry-byebug'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', '~> 0.72.0', require: false
end

group :production do
  gem 'bluepill'
  gem 'capistrano', '2.15.4'
  gem 'unicorn-rails'
end
