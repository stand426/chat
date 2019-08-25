Rails.application.routes.draw do
  devise_for :users

  root to: 'hello_world#index'
end
