Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  
  resources :my_prs, only:[:index,:show,:new,:edit,:update,:destroy]
  resources :histories, only:[:show,:new,:edit,:update,:destroy]
  resources :communities, only:[:index,:show,:destroy,:create,:update]
  resources :users, only:[:show,:new,:edit,:update] do
    get 'users/leave'
  end  
  resources :announces, only:[:index,:show,:new,:edit,:update,:destroy]
  
  get 'announces/index_all'
  get 'homes/top'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
