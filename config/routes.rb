Rails.application.routes.draw do
  devise_for :users
  #get 'signup/index'
  #get 'login/index'
  root "home#index"

  get 'about' , to: 'about#index'
  get 'home/index'
  get 'contact', to: 'contact#index'

  resources :products

  get 'main/index'
  # dashboard route
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end
  # routes students
  resources :students
  # routes tasks
  resources :tasks

  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
