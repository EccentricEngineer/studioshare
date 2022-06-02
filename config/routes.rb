Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'pages#home'

  get 'studios', to: 'studios#index'
  get '/dashboards', to: 'dashboards#home'

  resources :studios do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :reservations, only: [:show]
end

#
