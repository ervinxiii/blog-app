Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :blogs
  end
end
