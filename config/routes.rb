Rails.application.routes.draw do
  devise_for :users

  resources :direct_messages
  resources :group_messages
  resources :message_groups

  root to: 'hello_world#index'
end
