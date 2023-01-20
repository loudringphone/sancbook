Rails.application.routes.draw do
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  root :to => 'pages#home'
  resources :sanctions
  resources :dictators
  resources :countries
end
