class FarmersController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]


  def index
    @farmers = Farmer.all
  end

  def show
    @farmers = Farmer.friendly.find(params[:id])
  end

  def new
    @farmer = Farmer.new
    @user = current_user
  end

  def create
    @farmer = Farmer.new(farmer_params)
    @farmer.user_id = current_user.id
    if @farmer.save
      redirect_to farmers_url, notice: "Farmer was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @farmer = Farmer.find(params[:id])
    @farmer.update(farmer_params)

    #if @farmer.update(farmer_params)
      #redirect_to @farmer, notice 'Farmer successfully updated'
    #else
      #render :edit
    #end

  end

  def destroy
    @farmer.destroy
    redirect_to farmers_url, notice: 'Farmer was successfully destroyed'
  end

  private

  def farmer_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:farmer).permit(:first_name, :last_name, :farm_name, :origin, :region, :farmer_photo, :farm_landscape1, :farm_landscape2, :farm_landscape3, :farm_landscape4, :farm_landscape5, :farm_landscape6, :farm_landscape7, :farm_landscape8, :farm_landscape9, :farm_landscape10, :short_description, :long_description, :user_id)
  end

  def set_farmer
    @farmer = Farmer.find(params[:id])
  end

end
