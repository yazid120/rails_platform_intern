Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root "home#index"

  get 'about' , to: 'about#index'
  get 'home/index'
  get 'contact', to: 'contact#index'

  resources :products

  get 'main/index'

  # Admin route
  namespace :admin do
    root 'dashboard#index'
  end

  namespace :user do
    root 'user/dashboard#index'
  end
  get 'user' ,to: 'user/dashboard#index'

  # routes students
  resources :students
  # routes tasks
  resources :tasks

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
