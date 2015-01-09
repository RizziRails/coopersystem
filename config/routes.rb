Rails.application.routes.draw do
  
  resources :batches do
    resources :lista_prods
  end

  resources :lista_prods do
    resources :formulas
  end

  resources :formulas do
    resources :mps
    resources :lista_prods
  end
  
  



  resources :mps 


  resources :unidades
  
  
  

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
