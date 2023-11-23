Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  
  resources :my_prs, only:[:index,:show,:new,:edit,:update,:create,:destroy] do
    get '/uploads/my_pr/pr_movie/:id/:filename', to: 'my_prs#download_movie', as: 'download_my_pr_movie'
    resource :likes, only:[:create, :destroy]
    end
  resources :histories, only:[:show,:new,:edit,:update,:destroy]
  resources :communities, only:[:index,:show,:create,:update,:destroy] do
  end
  resources :users, only:[:show,:new,:edit,:update,:destroy] do
    resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
      get 'leave'
  end  
  resources :announces, only:[:index,:show,:new,:edit,:update,:create,:destroy] do
  end
  
  delete '/my_prs/:id', to: 'my_prs#destroy', as: 'delete_my_pr'
  get 'announces/index_all'
  get 'homes/top'
  get '/profile', to: 'profiles#show'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
