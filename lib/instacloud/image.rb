class Image

  attr_reader :link, :image, :likes

  def initialize(link, image, likes)
  	@link = link
  	@image = image
  	@likes = likes
  end

end