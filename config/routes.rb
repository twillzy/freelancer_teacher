Rails.application.routes.draw do

  resources :projects
  root :to => "pages#index"
  
  resources :users
  resources :teachers

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
