Rails.application.routes.draw do
  devise_for :users
  
  resources :my_prs, only:[:index,:show,:new,:edit,:update,:destroy]
  resources :histories, only:[:show,:new,:edit,:update,:destroy]
  resources :communities, only:[:index,:show,:destroy,:create,:update]
  resources :user, only:[:show,:new,:edit,:update]
  resources :announces, only:[:index,:show,:new,:edit,:update,:destroy]
  
  get 'announces/index_all'
  get 'users/leave'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
