Rails.application.routes.draw do
  resources :uppies
  root 'uppies#index'

  # Users are here
  get 'users/sign-up', to: 'users#new'
  get 'users/sign-in', to: 'sessions#new'

  post 'users/sign-up', to: 'users#create'
  post 'users/sign-in', to: 'sessions#create'
  delete 'users/sign-out', to: 'sessions#destroy'

  post 'posts', to: 'uppies#create'
end
