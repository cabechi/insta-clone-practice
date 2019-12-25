# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :posts
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
