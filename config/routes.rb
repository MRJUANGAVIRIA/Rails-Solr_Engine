Rails.application.routes.draw do
  resources :posts
  root to: "users#index"
  resources :users
  get "/search" => "users#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
