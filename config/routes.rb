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

  # get 'eventbrite_api/index'
  #
  # get 'eventbrite_api/new'
  #
  # get 'eventbrite_api/create'
  #
  # get 'eventbrite_api/update'
  #
  # get 'eventbrite_api/destroy'

  # get 'events/index' => "events#index"

  # get 'events/new'
  #
   get 'events/new' => 'events#new'
  #
  # get 'events/update'
  #
  # get 'events/destroy'

  get 'events/:id' => 'events#event_info', as: 'event_info'

  # 'users/new'
  #
  # get 'comments/new'
  #
  # get 'comments/create'
  #
  # get 'comments/edit'
  #
  # get 'comments/update'
  #
  # get 'comments/destroy'
  #
  root 'users#new'
  #
  # get 'users/create'
  #
  # get 'users/update'
  #
  # get 'users/destroy'

  resources :events do
      resources :comments
  end

  get '/signup' => 'users#signup', as: 'signup'

  resources :users
  resources :login
end
