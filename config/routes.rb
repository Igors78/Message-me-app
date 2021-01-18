# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chatrooms#index'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post 'message', to: 'messages#create'
  resources :users

  mount ActionCable.server, at: '/cable'
end
