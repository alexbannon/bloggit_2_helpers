Rails.application.routes.draw do
  root to: "posts#index"
  get "posts/users/:id" => "users#showposts"
  resources :comments
  resources :users
  resources :posts
end
