class CartsController < ApplicationController


  def show
    @order = current_order

    @order_items = current_order.order_items

  end

  def update
    @order = current_order
    @order.update(order_params)
    redirect_to cart_path
  end

  private
  def order_params
    params.require(:order).permit(:company_name, :customer_first_name, :customer_last_name, :customer_billing_address, :customer_billing_postcode, :customer_billing_city, :customer_billing_country, :customer_billing_state, :vat_number, :special_request)
  end

end
