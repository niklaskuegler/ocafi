class AddSlugToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :slug, :string
    add_index :coffees, :slug, unique: true

  end
end
