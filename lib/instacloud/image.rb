require_relative '../../config/database'

class Image < Sequel::Model
  
  def popular_today
    Image.where{date > Date.today.to_time.to_i}.reverse_order(:likes).limit(20)
  end

  private 

  def unix_formatted_date_for_today
  	Date.today.to_time.to_i
  end
  
end

