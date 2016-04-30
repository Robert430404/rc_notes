Rails.application.routes.draw do
  # Home Route
  devise_scope :user do
    if User.count == 1
      root :to => 'devise/sessions#new'
    else
      root :to => 'devise/registrations#new'
    end
  end

  # API Routes
  namespace :api do
    namespace :v1 do
      resources :notes, :defaults => { :format => 'json' }
    end
  end

  # Resource routes
  resources :notes
  resources :settings

  # Authentication Routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
