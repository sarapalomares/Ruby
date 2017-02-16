Rails.application.routes.draw do
      root "times#main" #times controller, main function
      get 'times/main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
