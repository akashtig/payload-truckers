Rails.application.routes.draw do
  resources :companies
  resources :users
  # resources :trucks
  root :to => "welcome#index"
  resources :trucks

  get 'welcome/index'
  get 'sessions/new'
  get 'register' => 'trucks#new', :as => :register
  get 'companies/create'
  get 'users/create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  post '/trucks/:id' => 'trucks#reserve'
end
