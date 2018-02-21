Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root( { to: "restaurants#index"})
  resources :restaurants, except: [:destroy, :edit, :update] do
  # nest new and create functions of reviews with restaurants (link them)
  resources :reviews, only: [:new, :create]

  end
end
#All restaurants
# GET 'restaurants', to: "restaurants#index"

# #Show restaurant
# GET 'restaurants/:id', to: "restaurants#show"

# #Create new restaurant
# GET 'restaurants/new', to: "restaurants#new"
# POST 'restaurants', to: "restaurants#create"

# #Create review
# GET 'restaurants/38/reviews/new', to: "restaurants#new"
# POST 'restaurants/38/reviews', to: "restaurants#create"

