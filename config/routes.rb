Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

 resources :users, except: [:new]
 resources :instructors, only: [:index]
 resources :lessons, only: [:index, :show, :new, :create, :edit, :update, :destroy]


 get '/instructor/:id', to: "instructors#show", as: 'instructor'
 get 'signup', to: "users#new", as: 'signup' 
 get 'login', to: "sessions#new", as: 'login'
 post 'login', to: "sessions#create"


 delete 'logout', to: "sessions#destroy", as: 'logout'
#  delete 'delete', to: "lessons#destroy", as: 'cancel'

  



end
