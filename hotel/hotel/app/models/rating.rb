class Rating < ActiveRecord::Base
  attr_accessible :gotel_id, :user_id, :value
  
  belongs_to :user
  belongs_to :gotel
  validates :value, presence: true
  validates :value, format:{ with:/1|2|3|4|5/}
end
