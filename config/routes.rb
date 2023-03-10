Rails.application.routes.draw do

  get 'users/new'
  get 'sanction/edit'
  resources :sanctions
  resources :countries
  resources :users
  resources :comments
  resources :favourites, :only => [:new, :create]
  resources :messages
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  delete 'sanctions/:id/edit' => 'sanctions#destroy'
  get 'countries/:id/sanctions' => 'countries#sanctions'
  get 'sanctions/:id/favourites' => 'sanctions#favourites'
  post 'sanctions/:id/add_favourite' => 'sanctions#add_favourite'
  delete 'sanctions/:id/favourite' => 'sanctions#remove_favourite'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post 'sanctions/:id/comment' => 'comments#create'
  delete 'users/:id/comments' => 'comments#remove_all_comments'
  delete '/messages' => 'messages#delete_all_messages'
  get 'users/:id/history' => 'comments#index'
  get 'users/:id/messenger' => 'messages#index', :as => :messages_path
  get 'users/:id/messages' => 'messages#message'

  # Our AJAX requests will be sent to this path:
  get '/api/unread' => 'dashboard#unread'
  get '/api/:id/messages' => 'dashboard#messages'

end
