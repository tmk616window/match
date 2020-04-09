Rails.application.routes.draw do
  get '/detail/:id' , to:'posts#detail'
  get '/staff_login' , to: 'staffsessions#new'
  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout' , to:'sessions#destroy'
  resources :'posts'
  resources :'users'
  resources :'tasks'
  resources :'staffs'
  root to:'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
