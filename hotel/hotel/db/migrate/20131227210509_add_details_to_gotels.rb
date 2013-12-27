class AddDetailsToGotels < ActiveRecord::Migration
  def change
    add_column :gotels, :price_for_room, :decimal
    add_column :gotels, :star_rating, :integer
  end
end
