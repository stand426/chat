Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      get 'message/send_message'
      get 'message/subscribe'
      get 'message/unsubscribe'
    end
  end

  root to: 'hello_world#index'
end
