Rails.application.routes.draw do
  resources :articles
  root 'articles#index'
  get 'signup' => 'users#new'
  resources :authors
  get 'author' => 'authors#show'
  resources :users
  post 'signup' => 'users#create'



  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
