Rails.application.routes.draw do

  root 'users#index', as: 'main'
  post 'users/create' => 'users#create', as: 'create' 
  post 'users/login' => 'users#login', as: 'login'
  get 'users(/:id)' => 'users#show', as: 'show'
  delete 'users/logout' => 'users#logout', as: 'logout'

  get 'songs' => 'songs#index', as: 'songs'
  get 'songs(/:id)' => 'songs#show', as: 'songs_show'
  post 'songs/create' => 'songs#create', as: 'songs_create'

  post 'playlist/create' => 'playlists#create', as: 'playlist'


end
