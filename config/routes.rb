Rails.application.routes.draw do

  get 'sessions/create'

  get 'sessions/destroy'


  get 'sessions/create'

  get 'sessions/destroy'

# ======================== Facebook & Google Routes ========================
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
# ======================== Facebook & Google Routes ========================

  get 'home/show'

  get 'eventbrite_api/index'

  get 'eventbrite_api/new'

  get 'eventbrite_api/create'

  get 'eventbrite_api/update'

  get 'eventbrite_api/destroy'

  root "events#index"

  get 'events/new'

  get 'events/create'

  get 'events/update'

  get 'events/destroy'

  get 'events/:id' => 'events#event_info', as: 'event_info'

  get 'comments/new'

  get 'comments/create'

  get 'comments/update'

  get 'comments/destroy'

  get 'users/new' => 'users#new'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  resources :events do
    resources :comments
end

  resources :users
  get '/signup' => 'users#signup', as: 'signup'
  # resources :eventbrite_api
  resources :login
end
