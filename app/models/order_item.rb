class OrderItem < ApplicationRecord
  belongs_to :coffee
  belongs_to :order

  validates :quantity, presence: true
  validate :coffee_present
  validates :order, presence: { message: "is not a valid order" }

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      if quantity < 5
        coffee.price
      else
        coffee.price2
      end
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def coffee_present
    if coffee.nil?
      errors.add(:coffee, "is not valid or is not active.")
    end
  end

  #def order_present
  #  if order.nil?
  #    errors.add(:order, "is not a valid order.")
  #  end
  #end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
