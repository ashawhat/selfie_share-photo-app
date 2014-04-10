SelfieShare::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'users#index'

  resources :sessions
  resources :users
  resources :albums do
    resources :photos
  end
end
