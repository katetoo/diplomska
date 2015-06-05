Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  
  resources :groups
  resources :subgroups
  resources :substitutions
  resources :generic_names
end
