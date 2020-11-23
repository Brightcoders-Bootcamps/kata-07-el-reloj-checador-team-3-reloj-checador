Rails.application.routes.draw do

  root to: 'sessions#new'

  resources :employees
  resources :branches
  resources :reports
  resources :admins, only: [:new, :create]
  resources :sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
