Rails.application.routes.draw do
  
  get "home/index"
  
  get "usuario/new"

  get "usuario/login"

   
  post "usuario"=> "usuario#crear"

  post "usuario"=> "usuario#login"


  root 'home#index'

end
