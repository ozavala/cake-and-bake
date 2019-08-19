Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root 'products#index'
  resources :products

  resource :cart, only: [ :show ] do
    post :add, path: "add/:id"
    get :checkout
  end

  resources :orders, only: [ :index, :show, :create, :update ]
end
