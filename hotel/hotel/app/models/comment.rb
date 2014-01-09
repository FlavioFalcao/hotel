class Comment < ActiveRecord::Base
  attr_accessible :content, :gotel_id, :username, :user_id
  belongs_to :user
  belongs_to :gotel
end
