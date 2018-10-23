class AddUserToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_reference :farmers, :user, foreign_key: true
  end
end
