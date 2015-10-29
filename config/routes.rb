Rails.application.routes.draw do

  resources :projects
  root :to => "sessions#new"
  resources :bids
  resources :users

  # get '/bids/:id' => 'bids#show', as: 'bid'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  get '/pages' => 'pages#show'
  

end
