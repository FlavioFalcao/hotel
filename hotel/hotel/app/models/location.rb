class Location < ActiveRecord::Base
  attr_accessible :country, :state, :street, :city, :gotel_id
  belongs_to :gotel
end
