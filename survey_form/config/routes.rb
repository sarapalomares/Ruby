Rails.application.routes.draw do
  get '/' => 'dojos#index' #dojos controller, index method

  get 'result' => 'dojos#result' #dojos controller, result method

  post 'update' => 'dojos#update' #dojos controller, update method

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
