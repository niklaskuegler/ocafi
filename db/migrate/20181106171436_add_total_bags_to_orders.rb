class AddTotalBagsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_bags, :integer
  end
end
