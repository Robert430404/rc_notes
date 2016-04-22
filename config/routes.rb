Rails.application.routes.draw do
  # Home Route
  root 'home#index'

  # GET Routes

  # Resource routes
  resources :notes

  # Authentication Routes  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
