Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :farmers

  resources :newsletters, only: [:create]

  get "/aboutus", to: "pages#about_us", as: "about_us"

  #post 'newsletters', to: 'newsletters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
