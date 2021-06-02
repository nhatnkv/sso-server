Rails.application.routes.draw do
  get 'task/index'
  get 'credentials/me'
  use_doorkeeper
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
