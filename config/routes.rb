Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  
  resources :medicaments do
    resources :commentmedicaments, :only => [:create, :new]
  end
  resources :groups
  resources :subgroups
  resources :substitutions
  resources :generic_names
  resources :medicaments
  resources :producers
  resources :users
  
  get '/login', to: 'logins#new'
    post '/login', to: 'logins#create'
    get '/logout', to: 'logins#destroy'
end
