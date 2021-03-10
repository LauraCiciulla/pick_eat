Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants

  resources :users do
    resources :orders
  end

  resources :dishes, only: [:index, :show, :new, :create] do
    resources :dish_ingredients, only: [:index, :show, :new, :create]
  end


end
