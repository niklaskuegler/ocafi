class AddTextToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :short_description, :text
    add_column :farmers, :long_description, :text
  end
end
