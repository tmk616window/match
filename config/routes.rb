Rails.application.routes.draw do
  get '/staff_login' , to: 'staffsessions#new'
  post '/staff_login', to: 'staffsessions#create'
  delete '/staff_logout' , to:'staffsessions#destroy'
  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout' , to:'sessions#destroy'
  resources :'staffs'
  resources :'users'
  resources :'tasks'
  root to:'login_home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
