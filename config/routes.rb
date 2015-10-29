Rails.application.routes.draw do

  resources :projects
  root :to => "sessions#new"
  
  resources :users
  resources :bids

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  get '/pages' => 'pages#show'

end
