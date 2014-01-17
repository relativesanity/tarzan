source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.16'

gem 'foreman'
gem 'unicorn'
gem 'dalli'

# this is still under active development. Pick a version and stick to it
# till it gets a real release
gem 'chimpdoc', :git => 'git://github.com/relativesanity/chimpdoc.git'

gem 'pg' # prevent heroku from freaking out that we don't use the DB
group(:development, :test) { gem 'sqlite3' }

gem 'rdiscount'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
