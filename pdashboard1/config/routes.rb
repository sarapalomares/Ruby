Rails.application.routes.draw do
      get '/' => 'products#index'
      get '/products' => 'products#index'

      get 'products/new' =>'products#new'

      get 'products/:id' => 'products#show'

      get 'products/:id/edit' => 'products#edit'

      post 'create' => 'products#create'

      post 'update' => 'products#update'

      get 'delete/:id' => 'products#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
