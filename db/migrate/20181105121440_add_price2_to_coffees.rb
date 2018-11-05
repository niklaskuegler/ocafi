class AddPrice2ToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :price2, :float
  end
end
