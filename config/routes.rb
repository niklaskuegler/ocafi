Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  #get 'order_items/create'
  #get 'order_items/update'
  #get 'order_items/destroy'

  #get 'carts/show'

  resource :cart, only: [:show, :update, :edit, :destroy]
  resources :order_items, only: [:create, :update, :destroy]

  patch "/cart", to: "orders#update", as: "update_order"

  resources :farmers, param: :slug

  resources :coffees, param: :slug

  resources :newsletters, only: [:create]

  get "/about-us", to: "pages#about_us", as: "about_us"

  get "/mission-vision", to: "pages#mission_vision", as: "mission_vision"

  get "/general-terms-conditions-supply", to: "pages#general_terms_condition_supply", as: "general_terms_condition_supply"

  get "/general-terms-conditions-purchase", to: "pages#general_terms_condition_purchase", as: "general_terms_condition_purchase"

  get "/privacy-policy", to: "pages#privacy_policy", as: "privacy_policy"




  #post 'newsletters', to: 'newsletters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
