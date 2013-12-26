class Gotel < ActiveRecord::Base
  attr_accessible :room_description, :title
  validates_presence_of :title
end
