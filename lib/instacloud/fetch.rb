require_relative '../../config/instagram'
# require_relative 'image'
require_relative 'raw_image'

module Fetch
	
  # def self.popular_media
  #   client = Instagram.client()
  # 	for media_item in client.media_popular
  # 	  begin
  # 	    Image.create(
  # 		  :instagram_id => media_item.id,
  # 		  :link => media_item.link,
  # 		  :image => media_item.images.standard_resolution.url,
  # 		  :date => media_item.created_time,
  # 		  :likes => media_item.likes[:count])
  # 	  rescue Sequel::UniqueConstraintViolation => e
  # 	    puts "caught exception #{e}! oh no!"
  # 	    Image.update_likes(media_item.id, media_item.likes[:count])
  # 	  end
  #   end
  # end

  def self.popular_now
    images = []
    client = Instagram.client()
    for media_item in client.media_popular
      image = RawImage.new(
        media_item.link,
        media_item.images.standard_resolution.url,
        media_item.likes[:count]
      )
      images << image
    end
    images
  end

  def self.total_likes_most_popular(images)
    sorted_images = images.sort_by(&:likes)
    sorted_images.last.likes
  end

end