Rails.application.routes.draw do
  get 'sanction/edit'
  resources :sanctions
  resources :dictators
  resources :countries
  resources :country_names
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  delete 'sanctions/:id/edit' => 'sanctions#destroy'
  root :to => 'pages#home'
  
end
