Rails.application.routes.draw do
  devise_for :users
  # Home Route
  root 'home#index'

  # GET Routes

  # Resource routes
  resources :notes
end
