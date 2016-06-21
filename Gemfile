source 'https://rubygems.org'

ruby '2.3.0'

### Libraries
gem 'aws-sdk', '< 2.0'
gem 'contact_us'
gem "figaro"
gem "paperclip"
gem 'puma' # Use Puma as the app server
gem 'rails', :git => 'https://github.com/rails/rails'
gem "sinatra", :git => 'https://github.com/sinatra/sinatra.git'

### Assets

gem 'bootstrap-sass' # Pull yourself up by your
gem 'slim-rails' # Lose some weight
gem 'sass-rails' # Use SCSS for stylesheets
gem 'coffee-rails' # CoffeeScript
gem 'jquery-rails' # jQuery
gem 'jbuilder', '~> 2.0'
gem 'turbolinks'

####
#Active admin for rails5
####
gem 'activeadmin', github: 'activeadmin'
gem 'active_admin_editor', github: 'ejholmes/active_admin_editor'
gem 'devise',      '> 4.x'
gem 'rspec-rails', '>= 3.5.0.beta1'
gem 'ransack',    github: 'activerecord-hackery/ransack'
gem 'kaminari',   github: 'amatsuda/kaminari', branch: '0-17-stable'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'draper',     github: 'audionerd/draper', branch: 'rails5', ref: 'e816e0e587'
# To fix a Draper deprecation error
gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'
####
group :development do
  gem 'sqlite3'
  gem 'better_errors' # Debuggers
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'quiet_assets' # Shhh.. we don't need to see the assets
  gem 'spring' # Makes the app springy
end

group :production do
  gem 'pg'

  ### Dependencies
  gem 'therubyracer',  platforms: :ruby

  ### Assets
  gem 'rails_12factor' # Heroku Asset/Permissions Handler
  gem 'uglifier' # JS-Min
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
