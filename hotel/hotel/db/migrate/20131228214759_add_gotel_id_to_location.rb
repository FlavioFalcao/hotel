class AddGotelIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :gotel_id, :integer
  end
end
