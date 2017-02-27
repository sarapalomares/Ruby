Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'likes/index'
  get 'likes/create'
  get 'likes/destroy'
  post "likes/:id" => "likes#create"
  delete "likes/:id" => "likes#destroy"

  get 'secrets/index'
  get 'secrets/create'
  get 'secrets/destroy'
  get '/secrets' => "secrets#index"
  post '/secrets/:id' => "secrets#create"
  delete '/secrets/:id' => "secrets#destroy"

  get '/' => 'users#new'

  post '/users' => 'users#create'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

end
