class AddBreakfastToGotels < ActiveRecord::Migration
  def change
    add_column :gotels, :breakfast, :string
  end
end
