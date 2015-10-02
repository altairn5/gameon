Rails.application.routes.draw do
 
  root to: "sites#index"

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'


    resources :users
    resources :cities do
      resources :events
  end
end
