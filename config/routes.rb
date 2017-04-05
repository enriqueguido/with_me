Rails.application.routes.draw do
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
