Rails.application.routes.draw do
  devise_for :reviews
  devise_for :reservations
  devise_for :studios
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :studio
end
