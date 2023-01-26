Rails.application.routes.draw do

  get 'users/new'
  get 'sanction/edit'
  resources :sanctions
  resources :countries
  resources :comments
  resources :favourites, :only => [:new, :create]
  resources :users, :only => [:index, :new, :create]
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  delete 'sanctions/:id/edit' => 'sanctions#destroy'
  get 'users/:id' => 'users#profile'
  get 'users/:id/profile' => 'users#profile', :as => :user
  get 'countries/:id/sanctions' => 'countries#sanctions'
  get 'sanctions/:id/favourites' => 'sanctions#favourites'
  post 'sanctions/:id/add_favourite' => 'sanctions#add_favourite'
  delete 'sanctions/:id/favourite' => 'sanctions#remove_favourite'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post 'sanctions/:id/comment' => 'comments#create'
  delete 'users/:id/comments' => 'comments#remove_all_comments'
  get 'users/:id/history' => 'comments#index'


end
