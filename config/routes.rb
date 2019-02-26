Rails.application.routes.draw do
   root to: 'toppages#index'

   post "signup"=>"users#create"
  get 'signup', to: 'users#new'
  

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

 
  resources :users
  resources :tasks, only: [:index, :show, :new, :create,:edit,:destroy]
end