Rails.application.routes.draw do


  resources :employees
  resources :admins
  resources :branches
  resources :reports

  resources :branches do
    member do
      post :desactivate
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
