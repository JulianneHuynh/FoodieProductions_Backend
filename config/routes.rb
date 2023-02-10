Rails.application.routes.draw do
  devise_for :user_devises
  resources :recipe_boxes
  resources :cookbooks
  resources :recipes
  resources :opening_notes
  resources :users

  root "home#index"
  post '/login', to: "sessions#create", as: 'login'
  get '/get_recipes', to: "users#get_recipes"

  # get '*path',
  #     to: 'fallback#index',
  #     constraints: ->(req) { !req.xhr? && req.format.html? }
end