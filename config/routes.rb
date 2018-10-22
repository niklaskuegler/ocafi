Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :farmers
  get    "restaurants", to: "restaurants#index"
  get "farmers/new", to: "farmers#new"
  post "farmers", to: "farmers#create"
  get    "restaurants/:id", to: "restaurants#show"
  get "farmers/:id/edit", to: "farmers#edit"
  patch "farmers/:id", to: "farmers#update"
  delete "farmers/:id", to: "farmers#destroy"

  resources :newsletters, only: [:create]

  get "/about-us", to: "pages#about_us", as: "about_us"

  get "/mission-vision", to: "pages#mission_vision", as: "mission_vision"

  get "/general-terms-conditions-supply", to: "pages#general_terms_condition_supply", as: "general_terms_condition_supply"

  get "/general-terms-conditions-purchase", to: "pages#general_terms_condition_purchase", as: "general_terms_condition_purchase"

  get "/privacy-policy", to: "pages#privacy_policy", as: "privacy_policy"

  get "/our-coffee/fazenda-matao", to: "pages#fazenda_matao", as: "fazenda_matao"

  get "/our-coffee/fazenda-santa-alina", to: "pages#fazenda_santa_alina", as: "fazenda_santa_alina"

  get "/our-coffee/fazenda-alianca", to: "pages#fazenda_alianca", as: "fazenda_alianca"




  #post 'newsletters', to: 'newsletters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
