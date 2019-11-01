Rails.application.routes.draw do
resources :items
  devise_for :users, controllers: {
    application: 'application'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/myitems', to: 'items#user_index', as: 'user_items'
end
