Rails.application.routes.draw do
  get 'home/index'
  devise_scope :user do
    get 'home/index'
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
