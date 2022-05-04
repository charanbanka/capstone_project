Rails.application.routes.draw do
  resources :comments
  resources :sub_tasks
  resources :tasks
  resources :projects
  resources :phases
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
