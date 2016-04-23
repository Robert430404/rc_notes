Rails.application.routes.draw do
  # Home Route
  # root 'home#index'
  devise_scope :user do
    if User.count == 1
      root :to => 'devise/sessions#new'
    else
      root :to => 'devise/registrations#new'
    end
  end
  # GET Routes

  # Resource routes
  resources :notes

  # Authentication Routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
