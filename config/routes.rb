Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/skills', to: 'skills#index'
  get '/skills/:id', to: 'skills#show'
  get '/:tag_id/index', to: 'skills#index'
end
