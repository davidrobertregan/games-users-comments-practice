Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  
  get '/games', to: 'games#index'
  get 'games/:id', to: 'games#show'

  get 'comments', to: 'comments#index'
  get 'comments/:id', to: 'comments#show'

end
