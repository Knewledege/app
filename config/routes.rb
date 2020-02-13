Rails.application.routes.draw do
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #mount ActionCable.server => '/cable'
  root  'main#home'
  
  
  get   '/signup',   to:'users#new'
  post  '/signup',   to:'users#create'
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'sessions/new'

  resources :threadtitles
  get 'threadtitlehome',    to:'threadtitles#index'
  post 'threadtitlehome',    to:'threadtitles#create'
  get 'threadtitles/:threadtitle_id' => 'threadtitles#show'
  get '/list',  to:'threadtitles#all'
  
  resources :users

  resources :messages

end
