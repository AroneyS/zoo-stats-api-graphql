source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'graphql', '~> 1.8'
gem 'composite_primary_keys', '~> 11.1'
gem 'dotenv-rails'
gem 'rollbar'
gem 'panoptes-client', '~> 0.3.7'
gem 'active_record_upsert'
gem 'geocoder'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails', '~> 0.3.7'
  gem 'foreman'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  gem 'faker', '~> 1.8', '>= 1.8.7'
  gem 'rspec-rails', '~> 3.8'
  gem 'rspec-graphql_matchers'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end
