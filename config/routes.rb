Rails.application.routes.draw do
  # Home Route
  root 'home#index'

  # GET Routes

  # Resource routes
  resources :notes
end
