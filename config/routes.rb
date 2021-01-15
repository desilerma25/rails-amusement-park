Rails.application.routes.draw do
  root 'welcome#home'
  resources :rides
  resources :attractions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create', as: 'login'
  delete '/logout', to: 'session#destroy'
  post '/users/new', to: 'users#create'
  # get '/users/:id', to: 'users#show'
  # get '/users/:id/edit', to: 'users#edit'

end
