Rails.application.routes.draw do
  resources :qualifications
  resources :profiles
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'profile', to: 'profiles#current'

  resources :lessons
  root 'categories#index'
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
