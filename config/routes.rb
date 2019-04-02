Rails.application.routes.draw do
  resources :streams, only: [:index, :new, :create, :destroy]   
   root "streams#index"  
end
