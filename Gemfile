source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'twitter-bootstrap-rails', '~> 4.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg', '~> 1.0'
  gem 'rails_12factor', '~> 0.0.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'lodash-rails', '~> 4.17', '>= 4.17.10'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'mini_magick', '~> 4.8'
gem 'carrierwave-aws', '~> 1.3'
gem 'dotenv-rails', '~> 2.5'
