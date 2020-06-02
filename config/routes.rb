Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'games#index'

  get '/games', to: 'games#index'
  get 'games/new', to: 'games#new'
  get 'games/:id', to: 'games#show'
  post 'games', to: 'games#create'
  delete 'games/:id', to: 'games#destroy'

  post '/players', to: 'players#create'
end
