Rails.application.routes.draw do
  get 'answers/index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'home/index'

  resources :questions do
    resources :answers
  end

  root to: "home#index"
end
