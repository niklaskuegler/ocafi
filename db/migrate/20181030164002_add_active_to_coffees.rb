class AddActiveToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :active, :boolean
  end
end
