Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :games
  resources :comments 
  
end
