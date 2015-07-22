require './lib/instacloud/image'

get "/" do
  @images = Image.new.popular_today.all.shuffle
  @max_likes = @images.first.likes
  erb :index
end

get "/about" do
  erb :about
end