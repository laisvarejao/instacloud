require '../../config/database'

class Image < Sequel::Model
  
  def today
    Image.where{date > unix_formatted_date_for_today}
  end

  private 

  def unix_formatted_date_for_today
  	Date.today.to_time.to_i
  end
  
end

