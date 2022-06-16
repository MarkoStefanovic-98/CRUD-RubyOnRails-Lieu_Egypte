Rails.application.routes.draw do
  get 'lieu/index'
  get 'lieu/show'
  get 'lieu/new'
  post 'lieu/create'
  get 'lieu/edit'
  get 'lieu/update'
  get 'lieu/destroy'

  resources :lieu
  root 'lieu#index'
end
