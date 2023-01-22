Rails.application.routes.draw do

  get 'users/new'
  get 'sanction/edit'
  resources :sanctions
  resources :dictators
  resources :countries
  resources :country_names
  resources :favourites, :only => [:new, :create]
  resources :users, :only => [:index, :new, :create]
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  delete 'sanctions/:id/edit' => 'sanctions#destroy'
  get 'users/index' => 'users#index'
  get 'users/:id/profile' => 'users#profile'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
