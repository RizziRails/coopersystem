Rails.application.routes.draw do
  
  
  resources :saidafisicas

  resources :statuses

  resources :saidas

  resources :entradas

  resources :lista_embalagens do
    resources :batches
    resources :embalagens
  end

  resources :embalagens do
    resources :lista_embalagens
  end

  resources :materials

  resources :tipos


  resources :batches do
    resources :lista_embalagens
    resources :lista_prods
  end
  

  resources :lista_prods do
    resources :formulas
  end

  resources :formulas do
    resources :mps
    resources :lista_prods
  end

  resources :mps do
    resources :entradas
    resources :saidas

  end


  resources :unidades
  
  
  

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
