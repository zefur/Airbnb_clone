Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :skills, only: [ :home, :index, :new, :show, :create, :update, :edit, :destroy] do
  resources :bookings, only: [:new, :create ]
end

resources :users, only: [:show, :edit, :update]
 


  get '/tagged/:tag', to: 'skills#tagged', as: :tagged

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :skills, only: [:index]
    end
  end  
end

