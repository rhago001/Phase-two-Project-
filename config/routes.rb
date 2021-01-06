Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'

 resources :users, except: [:new]
 resources :instructors, only: [:show, :index]
 resources :lessons
 

 get 'signup', to: "users#new", as: 'signup'
 get 'login', to: "sessions#new", as: 'login'
 post 'login', to: "sessions#create"
 delete 'logout', to: "sessions#destroy", as: 'logout'

  



end
