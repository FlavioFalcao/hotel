class AddUserIdToGotels < ActiveRecord::Migration
  def change
    add_column :gotels, :user_id, :integer
  end
end
