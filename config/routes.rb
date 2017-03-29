Rails.application.routes.draw do

  devise_for :users
  resources :movies do
    collection do
      get 'search'
    end
    member do
      post :join
      post :quit
    end

    resources :reviews, except: [:show, :index]
  end

  namespace :account do
    resources :favorites
    resources :reviews
  end
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
