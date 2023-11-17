Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  
  resources :my_prs, only:[:index,:show,:new,:edit,:update,:create] do
    resource :likes, only:[:create, :destroy]
    get 'destroy'  
    end
  resources :histories, only:[:show,:new,:edit,:update,:destroy]
  resources :communities, only:[:index,:show,:create,:update] do
    get 'destroy'
  end
  resources :users, only:[:show,:new,:edit,:update] do
    member do 
      get :follows, :followers
    end
      resource :relationships, only: [:create, :destroy]
      get 'users/leave'
      get 'users/destroy'
  end  
  resources :announces, only:[:index,:show,:new,:edit,:update,:create] do
    get 'destroy'
  end
  
  delete '/my_prs/:id', to: 'my_prs#destroy', as: 'delete_my_pr'
  get 'announces/index_all'
  get 'homes/top'
  get '/profile', to: 'profiles#show'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
