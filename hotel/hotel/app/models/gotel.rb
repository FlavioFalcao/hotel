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
  validates_presence_of :title
  
  def average_rating
    @value = 0
    self.ratings.each do |rating|
        @value = @value + rating.value
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
end



end
