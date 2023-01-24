Rails.application.routes.draw do

  get 'users/new'
  get 'sanction/edit'
  resources :sanctions
  resources :dictators
  resources :countries
  resources :comments
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
  get 'countries/:id/sanctions' => 'countries#sanctions'
  get 'sanctions/:id/favourites' => 'sanctions#favourites'
  post 'sanctions/:id/add_favourite' => 'sanctions#add_favourite'
  delete 'sanctions/:id/remove_favourite' => 'sanctions#remove_favourite'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post 'sanctions/:id/comment' => 'comments#create'
  
end
