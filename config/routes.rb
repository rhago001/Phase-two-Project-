Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'

 resources :lessons 
 resources :users, except: [:new]

 get 'signup', to: "users#new", as: 'signup'

 
 get 'login', to: "sessions#new", as: 'login'
 post 'login', to: "sessions#create"
 delete 'logout', to: "sessions#destroy", as: 'logout'
  



end
