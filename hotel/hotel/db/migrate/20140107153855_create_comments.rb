class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :gotel_id
      t.string :username

      t.timestamps
    end
  end
end
