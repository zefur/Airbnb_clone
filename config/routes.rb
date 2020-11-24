Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :edit, :update]
 
  resources :skills, only: [:home, :index, :show]

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :skills, only: [:index]
    end
  end  
end

