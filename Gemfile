source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "mysql2"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'rails_admin', ['>= 3.0.0.rc3', '< 4']

# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
# gem "sassc-rails"
gem "image_processing", "~> 1.2"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
gem "sassc-rails"
