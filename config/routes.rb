Kudyn::Application.routes.draw do

  resources :students
  resources :groups

  devise_for :users

  get "home/index"

  root :to => 'home#index'
end
