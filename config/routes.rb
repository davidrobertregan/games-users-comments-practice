Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  
  get '/games', to: 'games#index'
  get 'games/:id', to: 'games#show'

  resources :comments 

end
