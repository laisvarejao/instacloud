require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1d' do
	Fetch.popular_media
end

scheduler.join