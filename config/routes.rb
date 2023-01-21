Rails.application.routes.draw do
  root 'home#index'

  # Users are here
  get 'users/sign-up', to: 'users#new'
  get 'users/sign-in', to: 'sessions#new'

  post 'users/sign-up', to: 'users#create'
  post 'users/sign-in', to: 'sessions#create'
  delete 'users/sign-out', to: 'sessions#destroy'
end