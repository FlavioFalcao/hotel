class Gotel < ActiveRecord::Base
  attr_accessible :room_description, :title, :image, :breakfast, :price_for_room,
  :star_rating
  mount_uploader :image, ImageUploader
  validates_presence_of :title
end
