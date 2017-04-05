Rails.application.routes.draw do
  get 'eventbrite_api/new'

  get 'eventbrite_api/create'

  get 'eventbrite_api/update'

  get 'eventbrite_api/destroy'

  get 'events/new'

  get 'events/create'

  get 'events/update'

  get 'events/destroy'

  get 'comments/new'

  get 'comments/create'

  get 'comments/update'

  get 'comments/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  resources :events
  resources :users
  resources :comments
end
