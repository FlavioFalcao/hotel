class Gotel < ActiveRecord::Base
  attr_accessible :room_description, :title, :image, :breakfast, :price_for_room,
  :location_attributes
  
  
  belongs_to :user
  has_one :location, dependent: :destroy
  has_many :ratings
  has_many :comments
  has_many :raters, :through => :ratings, :source => :users
  
  accepts_nested_attributes_for :location
  mount_uploader :image, ImageUploader
  validates :title, length: { maximum: 100 }
  validates :title, :room_description, :breakfast, :price_for_room, presence: true
  validates :room_description, length: { maximum:1500 }
  validates :breakfast, format:{ with:/Yes|No/} 
  validates :price_for_room, numericality: true
  
  def average_rating
    @value = 0
    self.ratings.each do |rating|
        @value = @value + rating.value
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
  end



end
