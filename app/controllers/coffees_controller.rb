class CoffeesController < ApplicationController

  before_action :authenticate_user!

  #needs to be added at some point

  ##before_action :is_admin?, only: [:update. :destroy]

  def index
    @coffees = Coffee.all
    @order_item = current_order.order_items.new
  end

  def show
    @coffees = Coffee.friendly.find(params[:slug])
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
    if @coffee.update(coffee_params)
      redirect_to coffee_path(@coffee)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end


  def coffee_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
  #  params.require(:coffee).permit(:price, :farmer_id, :active, :name)
    params.require(:coffee).permit(:name, :bags, :process, :certification, :year, :price, :price2, :sku, :farmer_id, :packaging, :sample_packaging, :batch, :score, :variety, :screensize, :flavor1, :flavor2, :flavor3, :flavor1_image, :flavor2_image, :flavor3_image, :cup_description)
  end

  def set_coffee
    @coffee = Coffee.friendly.find(params[:slug])
  end
end
