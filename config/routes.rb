Rails.application.routes.draw do
 
  root to: "sites#index"

  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: "sessions#destroy"

  get '/events', to: "events#index", as: "events"

  get '/events/new', to: "events#new", as: "new_event"

  get '/events/:id', to: 'events#show', as: "event"

  get '/events/:id/edit', to: 'events#edit', as: "edit_event"

  post "/events", to: "events#create"
  #the update route 
  patch "/events/:id", to: "events#update"

  #the destroy route 
  delete "/events/:id", to: "events#destroy"

    resources :users
    resources :cities do
      resources :events
  end
end
