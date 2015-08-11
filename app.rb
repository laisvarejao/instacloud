require './lib/instacloud/fetch'

get "/" do
  @images = Fetch.popular_now #Image.new.popular_today
    if @images
    @most_popular = Fetch.total_likes_most_popular(@images)
    @images.shuffle!
  end
  erb :index
end