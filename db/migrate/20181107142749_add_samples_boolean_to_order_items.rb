class AddSamplesBooleanToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :sample, :boolean, default: false
  end
end
