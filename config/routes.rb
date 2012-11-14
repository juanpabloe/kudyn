Kudyn::Application.routes.draw do

  resources :grades do
    collection do
      get 'monthly'
      post 'update_monthly'
    end
  end

  resources :students
  resources :groups
  resources :courses
  resources :faltas
  resources :attendance_sheets

  devise_for :users

  get "home/index"
  get 'home/charts'

  root :to => 'home#index'
end
