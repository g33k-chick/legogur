class CreateLegosets < ActiveRecord::Migration
  def change
    create_table :legosets do |t|
      t.string :name
      t.string :product_type
      t.integer :pieces
      t.integer :minifigures
      t.string :url

      t.timestamps null: false
    end
  end
end
