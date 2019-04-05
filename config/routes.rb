Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :attractions

  get '/signin', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  post '/users/ride', to: 'users#ride'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
