Rails.application.routes.draw do
# root path
root to: "restaurants#index"


# CODE REVIEW: Why do you login via the user's controller but logout via the
# sessions controller?
# Sessions and Users
# post '/sessions/login' => 'sessions#login'
get '/sessions/logout' => 'sessions#logout'

get '/users/login' => 'users#login'

# CODE REVIEW: What value do you get from using "resources" when you only have
# 1 of the actions available?
resources :sessions, only: 'create'
resources :users

resources :restaurants do
  resources :reviews, only: [:new, :create]
end

end
