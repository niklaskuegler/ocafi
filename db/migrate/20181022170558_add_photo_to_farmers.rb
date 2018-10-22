class AddPhotoToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :farmer_photo, :string
    add_column :farmers, :farm_landscape1, :string
    add_column :farmers, :farm_landscape2, :string
    add_column :farmers, :farm_landscape3, :string
    add_column :farmers, :farm_landscape4, :string
    add_column :farmers, :farm_landscape5, :string
    add_column :farmers, :farm_landscape6, :string
    add_column :farmers, :farm_landscape7, :string
    add_column :farmers, :farm_landscape8, :string
    add_column :farmers, :farm_landscape9, :string
    add_column :farmers, :farm_landscape10, :string
  end
end
