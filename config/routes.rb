Rails.application.routes.draw do
  root 'home#show'

  devise_for :users, controllers: {registrations: 'users/registrations'}

  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
  end
  # resources :users
end
