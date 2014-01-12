class Location < ActiveRecord::Base
  attr_accessible :country, :state, :street, :city, :gotel_id
  belongs_to :gotel
  validates :country, :state, :city, :street, presence: true
  validates :country, :state, :city, :street, length:{ maximum: 140} 
end
