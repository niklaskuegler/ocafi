class AddNameToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :name, :string
  end
end
