class Gotel < ActiveRecord::Base
  attr_accessible :room_description, :title, :image, :breakfast, :price_for_room,
  :location_attributes
  
  
  belongs_to :user
  has_one :location
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users
  
  accepts_nested_attributes_for :location
  mount_uploader :image, ImageUploader
  validates_presence_of :title
end
