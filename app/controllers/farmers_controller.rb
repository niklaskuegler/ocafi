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

    if @farmer.save
      redirect_to @farmer, notice: 'Farm was successfully saved'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @farmer = Farmer.update(farmer_params)
      redirect_to @farmer, notice: 'Farm was successfully updated'
    else
      render :edit
    end
    #@farmer = Farmer.find(params[:id])
    #@farmer.update(farmer_params)
  end

  def destroy
    @farmer = Farmer.destroy
    redirect_to farmers_url, notice: 'Farm was successfully destroyed'
  end

  private

  def farmer_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:farmer).permit(:first_name, :last_name, :farm_name, :origin, :region)
  end

  def set_farmer
    @farmer = Farner.find(params[:id])
  end

end
