class OrderItem < ApplicationRecord
  belongs_to :coffee
  belongs_to :order
end
