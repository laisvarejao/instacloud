# require_relative '../../config/database'

# class Image < Sequel::Model

#   dataset_module do
#     def update_likes(instagram_id, likes) 
#       where(:instagram_id => instagram_id).update(:likes => likes)
#     end
#   end

#   def popular_today
#     today = unix_formatted_date_for_today
#     Image.where{date > today}.reverse_order(:likes).limit(20).all
#   end

#   private

#   def unix_formatted_date_for_today
#   	Date.today.to_time.to_i
#   end
  
# end

