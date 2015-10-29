Rails.application.routes.draw do
  root :to => "pages#index"
  
  resources :users
  resources :teachers
  resources :jobs

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
