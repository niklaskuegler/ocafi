class FarmersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @farmers = Farmer.all
  end

  def show
    @farmers = Farmer.find(params[:id])
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    @farmer.save
    redirect_to farmers_url
  end

  def edit
  end

  def update
    @farmer = Farmer.find(params[:id])
    @farmer.update(farmer_params)
  end

  def destroy
  end

  private

  def farmer_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:farmer).permit(:first_name, :last_name, :farm_name, :origin, :region, :farmer_photo, :farm_landscape1, :farm_landscape2, :farm_landscape3, :farm_landscape4, :farm_landscape5, :farm_landscape6, :farm_landscape7, :farm_landscape8, :farm_landscape9, :farm_landscape10, :short_description, :long_description)
  end

  def set_farmer
    @farmer = Farner.find(params[:id])
  end

end
