Rails.application.routes.draw do
  get 'welcome/index'
  get 'sessions/new'
  root 'welcome#index'

  get '/socialhub', to: 'admins#index'
  
  get '/signup', to: 'admins#new'
  post '/signup', to: 'admins#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'
  get '/logout',  to: 'sessions#destroy'

  resources :admins

  resources :events do
    resources :comments
  end
end
