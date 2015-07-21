require 'sequel'
require_relative 'environment'

if ENV['DATABASE_URL']
    DB = Sequel.connect ENV['DATABASE_URL']
    puts 'Connected to the database.'
end