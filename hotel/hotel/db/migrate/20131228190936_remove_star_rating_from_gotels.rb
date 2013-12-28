class RemoveStarRatingFromGotels < ActiveRecord::Migration
  def up
    remove_column :gotels, :star_rating
  end

  def down
    add_column :gotels, :star_rating, :integer
  end
end
