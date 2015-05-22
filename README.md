# Spinning up this app
    rails new sign-ups -d postgresql

### Want to know more or have issues
    rails new --help

### Rails app structure
[Ruby on Rails Directory Structure](http://www.tutorialspoint.com/ruby-on-rails/rails-directory-structure.htm)

# Git Overview

    git add -A
    git commit -m 'Initial commit'

## Gems we are using in this project
[Devise Gem](https://github.com/plataformatec/devise)
[Simple Form](https://github.com/plataformatec/simple_form)
[Foundation](https://github.com/zurb/foundation-rails)

## How to get the Gems into your project

open up your Gemfile in a text editor.

    gem 'devise'

then at your command line

    bundle install

Run the devise generator

    rails generate devise User

## Set up your database

    rake db:create
    rake db:migrate

## Running your app locally

    rails s

## Simple Form

    rails g sumple_form:install --foundation

## Foundation

    rails g foundation:install
