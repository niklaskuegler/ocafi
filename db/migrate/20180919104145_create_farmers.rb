class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :first_name
      t.string :last_name
      t.string :origin
      t.string :region
      t.string :farm_name

      t.timestamps
    end
  end
end
