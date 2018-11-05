class AddCupDescriptionToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :cup_description, :string
  end
end
