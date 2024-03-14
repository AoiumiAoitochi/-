Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get    '/index', to: 'tasks#index'
  get    'posts/new', to: 'posts#new'
  post   'posts/create', to: 'posts#create'
  get    'posts/index', to: 'posts#index'
  get    'posts/:id', to: 'posts#show', as: :post

  resources :users
  resources :tasks
  resources :posts
end
