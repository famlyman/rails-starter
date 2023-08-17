Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  
  resources :admin, only: [:index, :create, :update]

  
end
