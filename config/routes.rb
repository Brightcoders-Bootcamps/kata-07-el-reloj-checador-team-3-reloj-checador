Rails.application.routes.draw do

  resources :employees
  resources :branches
  resources :reports
  resources :admins, only: [:new, :create]
  resources :sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
<<<<<<< HEAD
  delete 'logout', to: 'sessions#destroy'
=======
  get 'logout', to: 'sessions#destroy'
>>>>>>> b22034afac8950255d439fb4fb96f62d8715ca43

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
