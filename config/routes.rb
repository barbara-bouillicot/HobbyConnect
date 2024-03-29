Rails.application.routes.draw do
  get 'chatrooms/index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users, only: [:show, :index]

  resources :events, only: [:index, :new, :create, :edit, :update, :show, :destroy] do
    resources :requests, only: [:new, :destroy] do
      member do
        patch :accept, to: "requests#accept", as: :accept_request
        patch :reject, to: "requests#reject", as: :reject_request
      end
    end
  end

  resources :chatrooms, only: [:index, :show, :new, :create, :update] do
    resources :messages, only: [:create]
  end


  resources :hobbies, only: [:index, :show]


end
