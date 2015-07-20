require 'instagram'
require_relative 'environment'

if ENV['INSTAGRAM_ACCESS_TOKEN'] 
	Instagram.configure do |config|
	  config.access_token = ENV['INSTAGRAM_ACCESS_TOKEN']
	end
end