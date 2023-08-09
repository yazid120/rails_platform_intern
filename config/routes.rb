Rails.application.routes.draw do
  resources :products
  get 'main/index'
  get 'admin', to: 'admin#index'
  # routes students
  resources :students
  # routes tasks
  resources :tasks

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
