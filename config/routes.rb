Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :chat_rooms, only: [:new, :create, :show, :index]
  resources :users



  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
    get 'profile_update', to: 'users/registrations#edit'
  end





  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'
end
