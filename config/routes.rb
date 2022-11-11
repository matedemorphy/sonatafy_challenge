Rails.application.routes.draw do
  resources :dealerships, only: [:index, :new, :create, :destroy] 
  resources :cars, only: [:index, :new, :create, :destroy] 

  get 'home/index'
  devise_scope :user do
    get 'cars/index'
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cars#index"
end
