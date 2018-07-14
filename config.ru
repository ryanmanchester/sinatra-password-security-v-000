require './config/environment'
require 'pry'

if ActiveRecord::Migrator.needs_migration?
  binding.pry
  raise 'Migrations are pending. Run `rake db:migrate SINATRA_ENV=test` to resolve the issue.'
end

run ApplicationController
