Rails.application.routes.draw do
  resources :users, only:[:show, :update]

  resources :recipe_boxes
  resources :cookbooks
  resources :recipes


  post '/signup', to: "users#signup"
  get '/user', to: "users#show"
  # patch '/edit/:id', to: "users#edit"
  delete '/deactivate/:id', to: "users#destroy"

  # delete '/delete_recipe/:id', to: "cookbooks#destroy_recipe"

  post '/login', to: "sessions#login"
  delete '/logout', to: "sessions#logout"



 
end