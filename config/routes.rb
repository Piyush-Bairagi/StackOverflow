# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'home/index'

  resources :questions, shallow: true do
    resources :answers do
      resources :comments
    end
  end

  root to: "home#index"
end