class CreateGotels < ActiveRecord::Migration
  def change
    create_table :gotels do |t|
      t.string :title
      t.text :room_description

      t.timestamps
    end
  end
end
