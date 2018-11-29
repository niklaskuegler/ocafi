class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :show, :index, :farmer, :farmers, :our_coffee, :mission_vision, :general_terms_condition_supply, :general_terms_condition_purchase, :privacy_policy]

  def home
  end

  def about_us
  end

  def mission_vision
  end

  def general_terms_condition_supply
  end

  def general_terms_condition_purchase
  end

  def impressum
  end

  def privacy_policy
  end

end
