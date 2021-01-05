Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'

 resources :users, except: [:new]
 resources :lessons 
 get 'login', to: 'sessions#new', as: 'login'
 get 'signup', to: "users#new", as: 'signup'
 post 'login', to: "sessions#create" 
 delete 'signout', to: "sessions#destroy", as: "signout"
end
