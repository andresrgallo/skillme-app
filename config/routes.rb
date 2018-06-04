Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'profile', to: 'profiles#current'

  resources :lessons
  root to: 'categories#index'
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
