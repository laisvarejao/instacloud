require '../config/database'

DB.create_table :images do
  primary_key :id
  String :instagram_id, :unique=>true
  String :link
  String :image
  Integer :date
  Integer :likes
end