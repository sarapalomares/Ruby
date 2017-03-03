Rails.application.routes.draw do
  get  '/' => 'users#index'

  get '/users/new' => 'users#new'

  get '/users/:id' => 'users#show'

  get '/users/:id/edit' => 'users#edit'

  post '/create' => 'users#create'

  post '/update' => 'users#update'

  get '/delete/:id' => 'users#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
