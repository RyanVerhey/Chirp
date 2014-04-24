Rails.application.routes.draw do
# root path
root to: "restaurants#index"


# Sessions and Users
# post '/sessions/login' => 'sessions#login'
get '/sessions/logout' => 'sessions#logout'

get '/users/login' => 'users#login'

resources :sessions, only: 'create'
resources :users

resources :restaurants do
  resources :reviews, only: [:new, :create]
end

# Tags

post '/tags/tag-restaurant' => 'tags#tag_restaurant'

end
