Rails.application.routes.draw do
# root path
root to: "restaurants#index"

# Sessions and Users
# post '/sessions/login' => 'sessions#login'
get '/sessions/logout' => 'sessions#logout'

get '/users/login' => 'users#login'

resources :sessions, only: 'new'
resources :users

end
