class CoffeesController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @coffees = Coffee.all
    @order_item = current_order.order_items.new
  end

  def show
    @coffees = Coffee.find(params[:id])
  end

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params)

    @coffee.save
    redirect_to farmers_url
  end

  def edit
  end

  def update
    @coffee = Coffee.find(params[:id])
    @coffee.update(coffee_params)
  end

  def destroy
  end

  private

  def coffee_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:coffee).permit(:bags, :process, :certification, :year, :price, :sku, :farmer_id, :packaging, :batch, :score, :variety, :screensize, :flavor1, :flavor2, :flavor3, :flavor1_image, :flavor2_image, :flavor3_image)
  end

  def set_coffee
    @coffee = Coffee.find(params[:id])
  end


end
