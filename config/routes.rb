Rails.application.routes.draw do
  post :try_send, to: 'multi_mails#try_send'

  root to: 'visitors#index'
  devise_for :users
  resources :users

end
