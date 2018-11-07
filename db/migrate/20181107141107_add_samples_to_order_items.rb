class AddSamplesToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :sample_quantity, :integer
  end
end
