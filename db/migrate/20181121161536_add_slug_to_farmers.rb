class AddSlugToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :slug, :string
    add_index :farmers, :slug, unique: true
  end
end
