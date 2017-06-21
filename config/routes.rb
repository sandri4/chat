Rails.application.routes.draw do
  root 'chat_rooms#index'
  resources :chat_rooms, only: [:new, :create, :show, :index]
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users
  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
    get 'profile_update', to: 'users/registrations#edit'
  end

  mount ActionCable.server => '/cable'

end
