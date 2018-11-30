class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :show, :index, :farmer, :farmers, :our_coffee, :mission_vision, :general_terms_of_trade, :privacy_policy, :order_successful, :impressum]

  def home
  end

  def about_us
  end

  def mission_vision
  end

  def general_terms_of_trade
  end

  def order_successful
  end

  def impressum
  end

  def privacy_policy
  end

end
