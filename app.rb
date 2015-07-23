require './lib/instacloud/image'

get "/" do
  @images = Image.new.popular_today.all
	if @images
	  @most_popular = @images.first.likes
	  @images.shuffle!
	end
  erb :index
end