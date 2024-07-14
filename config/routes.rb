Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resources :messages, only: [:index, :create]
  end

  resources :users, only: [:index, :show, :edit, :update] do
    collection do
      get :profile
      get :settings
    end
  end

  root to: 'pages#home'
end
