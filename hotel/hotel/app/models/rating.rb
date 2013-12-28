class Rating < ActiveRecord::Base
  attr_accessible :gotel_id, :user_id, :value
  
  belongs_to :user
  belongs_to :gotel
end
