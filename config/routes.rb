Rails.application.routes.draw do
  root "photos#index"

  devise_for :users
  #get "/users/:id" => "users#show", as: :user used other format below
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ":username/liked" => "photos#liked", as: :liked_photos
  #must go last becasue its super general route
  get ":username"  => "users#show", as: :user
end
