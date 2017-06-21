Rails.application.routes.draw do
  resources :messages
  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :users



  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
    get 'profile_update', to: 'users/registrations#edit'
  end





  root 'messages#index'

end
