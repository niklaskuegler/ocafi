class CartsController < ApplicationController

  def show
    @order = current_order
    @order_items = current_order.order_items
  end

  def update
    @order = current_order
    if @order.update(order_params)

      order = current_order
      order_items = current_order.order_items

      #Update trigger for mail - check for validations
      company_name = params[:order][:company_name]
      customer_first_name = params[:order][:customer_first_name]
      customer_last_name = params[:order][:customer_last_name]
      customer_email = params[:order][:customer_email]
      phone_number = params[:order][:phone_number]
      customer_billing_address = params[:order][:customer_billing_address]
      customer_billing_postcode = params[:order][:customer_billing_postcode]
      customer_billing_city = params[:order][:customer_billing_city]
      customer_billing_country = params[:order][:customer_billing_country]
      vat_number = params[:order][:vat_number]
      special_request = params[:order][:special_request]

      OrderMailer.order_email(company_name, customer_first_name, customer_last_name, customer_email, phone_number, customer_billing_address, customer_billing_postcode, customer_billing_city, customer_billing_country, vat_number, special_request, order, order_items).deliver

      #flash does not work yet
      flash[:success] = "Order placed"

      #add confirmation link below this
      redirect_to root_path

    else
      redirect_to cart_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:company_name, :customer_first_name, :customer_last_name, :customer_billing_address, :customer_billing_postcode, :customer_billing_city, :customer_billing_country, :customer_billing_state, :vat_number, :special_request)
  end

end
