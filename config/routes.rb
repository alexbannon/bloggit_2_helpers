Rails.application.routes.draw do
  root to: "posts#index"
  resources :comments
  resources :users
  resources :posts
end
