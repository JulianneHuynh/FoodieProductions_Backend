Rails.application.routes.draw do
  resources :users, only:[:show, :update]

  resources :recipe_boxes
  resources :cookbooks
  resources :recipes
  resources :opening_notes


  post '/signup', to: "users#signup"
  get '/user', to: "users#show"
  # patch '/edit/:id', to: "users#edit"
  delete '/deactivate/:id', to: "users#destroy"

  post '/login', to: "sessions#login"
  delete '/logout', to: "sessions#logout"



 
end