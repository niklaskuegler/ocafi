class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.decimal :subtotal, precision: 12, scale: 3

      t.decimal :tax, precision: 12, scale: 3
      t.decimal :shipping, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.references :order_status, foreign_key: true

      t.datetime :date_of_order
      t.datetime :date_of_shippment
      t.string :company_name
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_billing_address
      t.string :customer_billing_postcode
      t.string :customer_billing_city
      t.string :customer_billing_state
      t.string :customer_billing_country
      t.string :customer_shipping_address
      t.string :customer_shipping_postcode
      t.string :customer_shipping_city
      t.string :customer_shipping_state
      t.string :customer_shipping_country
      t.string :customer_email
      t.string :vat_number
      t.string :special_request


      t.timestamps
    end
  end
end
