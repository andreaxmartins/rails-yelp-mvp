Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  get '/restaurants', to: 'restaurants#index'

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET 'restaurants/new'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # POST 'restaurants'
  post '/restaurants', to: 'restaurants#create'

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET 'restaurants/38'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  get '/restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review

  # POST "restaurants/38/reviews"
  post '/restaurants/:id/reviews', to: 'reviews#create'
end
