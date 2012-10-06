Kudyn::Application.routes.draw do

  resources :groups

  devise_for :users

  get "home/index"

  root :to => 'home#index'
end
