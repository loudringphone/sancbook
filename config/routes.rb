Rails.application.routes.draw do
  get 'country_names/index'
  get 'country_names/new'
  get 'country_names/edit'
  get 'country_names/show'
  get 'dictators/index'
  get 'dictators/new'
  get 'dictators/edit'
  get 'dictators/show'
  get 'sanctions/index'
  get 'sanctions/new'
  get 'sanctions/edit'
  get 'sanctions/show'
  get 'sanction/index'
  get 'sanction/new'
  get 'sanction/edit'
  get 'sanction/show'
  get 'country_name/index'
  get 'country_name/new'
  get 'country_name/edit'
  get 'country_name/show'
  get 'dictator/index'
  get 'dictator/new'
  get 'dictator/edit'
  get 'dictator/show'
  resources :sanctions
  resources :dictators
  resources :countries
  resources :country_names
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  delete 'countries/:id/edit' => 'countries#destroy'
  root :to => 'pages#home'
  
end
