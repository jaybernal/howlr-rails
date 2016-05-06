Rails.application.routes.draw do

  resources :howls, only: [:index, :new, :create, :destroy]
  resources :wolves, only: [:index, :new, :create]

end
