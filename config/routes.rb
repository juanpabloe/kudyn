Kudyn::Application.routes.draw do

  resources :students
  resources :groups
  resources :courses

  devise_for :users

  get "home/index"

  root :to => 'home#index'
end
