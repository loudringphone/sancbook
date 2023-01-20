Rails.application.routes.draw do
  resources :sanctions
  resources :dictators
  resources :countries
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  root :to => 'pages#home'
  
end
