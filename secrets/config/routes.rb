Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "secrets/index"
  post "/secrets/create" => "secrets#create"
  get "/secrets/destroy"
  get "/secrets" => "secrets#index"
  post "/secrets/:id" => "secrets#create"
  delete "/secrets/:id" => "secrets#destroy"
  post "/secrets/like/:id" => "secrets#like"
  post "/secrets/unlike/:id" => "secrets#unlike"
   post "/secrets/delete/:id" => "secrets#delete"

  get "/" => "users#new"

  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"

  get "/sessions/new" => "sessions#new"
  post "/sessions" => "sessions#create"

  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "/users/logout" => "users#logout"

end
