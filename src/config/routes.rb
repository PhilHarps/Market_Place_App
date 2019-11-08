Rails.application.routes.draw do
  get 'orders/complete'
  get 'orders/cancel'
  get 'orders/:item_id', to: "orders#new", as: "new_order"
resources :items
  devise_for :users, controllers: {
    application: 'application'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#home'
  get '/myitems', to: 'items#user_index', as: 'user_items'
  # get 'items/new', to: 'items#new'
  # post 'items/new', to: 'items#create'
   end
