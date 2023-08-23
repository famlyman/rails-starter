Rails.application.routes.draw do
  resources :seasons
  get 'groupprofile/profile'
  get 'profile/:id', to: 'groupprofile#profile', as: 'group_profile'
  get 'users/profile'
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :memberships
  resources :groups do
    post 'join', :on => :member
    delete 'leave', :on => :member
  end
  root 'pages#home'
  devise_for :users
  
  resources :admin, only: [:index, :create, :update]

  
end
