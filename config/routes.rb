# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :questions, shallow: true do
    resources :answers do
      member do
        put 'like_dislike' => "answers#like_dislike"
      end
      resources :comments
    end
  end

  post 'users/profile_photo' => 'users#profile_photo'

  root to: "questions#index"
end
