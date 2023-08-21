Rails.application.routes.draw do
  resources :memberships
  resources :groups do
    post 'join', :on => :member
    delete 'leave', :on => :member
  end
  root 'pages#home'
  devise_for :users
  
  resources :admin, only: [:index, :create, :update]

  
end
