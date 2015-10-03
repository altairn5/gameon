Rails.application.routes.draw do
 
  root to: "sites#index"

  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: "sessions#destroy"

    resources :users
    resources :cities do
      resources :events
  end
end
