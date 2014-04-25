Rails.application.routes.draw do
# root path
root to: "restaurants#index"


# Sessions and Users
# post '/sessions/login' => 'sessions#login'
get '/sessions/logout' => 'sessions#logout'

get '/sessions/login' => 'sessions#login'

resources :sessions, only: 'create'
resources :users

resources :restaurants do
  resources :reviews, only: [:new, :create]
  resources :photos, only: :create
end

# Tags

post '/tags/tag-restaurant' => 'tags#tag_restaurant'
post '/tags' => 'tags#restaurants'
resources :tags, only: :show

#votes

patch  '/reviews/:id' => 'reviews#vote'
end
