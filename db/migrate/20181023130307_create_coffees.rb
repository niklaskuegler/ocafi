class CreateCoffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.integer :bags
      t.string :process
      t.string :certification
      t.string :year
      t.float :price
      t.string :sku
      t.references :farmer, foreign_key: true
      t.float :price
      t.integer :packaging
      t.string :batch
      t.string :score
      t.string :variety
      t.string :screensize
      t.string :flavor1
      t.string :flavor2
      t.string :flavor3
      t.string :flavor1_image
      t.string :flavor2_image
      t.string :flavor3_image

      t.timestamps
    end
  end
end
