Rails.application.routes.draw do
# root path
root to: "restaurants#index"

resources :reviews, only: [:new, :create]
end
