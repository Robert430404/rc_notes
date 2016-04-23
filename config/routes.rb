Rails.application.routes.draw do
  # Home Route
  # root 'home#index'
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
  # GET Routes

  # Resource routes
  resources :notes

  # Authentication Routes
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
