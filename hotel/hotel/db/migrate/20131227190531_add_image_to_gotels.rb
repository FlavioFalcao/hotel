class AddImageToGotels < ActiveRecord::Migration
  def change
    add_column :gotels, :image, :string
  end
end
