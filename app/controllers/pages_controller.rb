class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :index, :farmer, :farmers, :our_coffee, :about_us, :mission_vision, :general_terms_condition_supply, :general_terms_condition_purchase, :privacy_policy, :fazenda_alianca, :fazenda_matao, :fazenda_santa_alina]

  def home
  end

  def about_us
  end

  def fazenda_alianca
  end

  def fazenda_santa_alina
  end

  def fazenda_matao
  end

  def mission_vision
  end

  def general_terms_condition_supply
  end

  def general_terms_condition_purchase
  end

  def privacy_policy
  end

end
