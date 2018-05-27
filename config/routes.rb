Rails.application.routes.draw do
  root 'welcome#index'

  get '/signup', to: 'admins#new'
  post '/signup', to: 'admin#create'
  resources :admins
end
