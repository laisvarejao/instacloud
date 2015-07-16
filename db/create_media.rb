require '../config/sequel'

DB.create_table :media do
  primary_key :id
  String :link
  String :image
  Integer :date
  Integer :likes
end