class AddSamplesToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_column :coffees, :sample_packaging, :integer
  end
end
