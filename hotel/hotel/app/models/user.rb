class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_id, :username
  # attr_accessible :title, :body
  has_many :gotels
  has_many :ratings
  has_many :comments
  has_many :rated_gotels, :through => :ratings, :source => :gotels 
 
validates_presence_of :username
end
