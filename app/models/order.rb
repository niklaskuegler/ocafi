class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items, dependent: :destroy
  before_validation :set_order_status, on: :create
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0 }.sum
  end

  def bags
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i) : 0 }.sum
  end

  private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

  def bags_quantity
    self[:bags] = bags
  end

end
