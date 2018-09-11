Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users
  #users
  get 'users', to: 'users#index'
  post 'users', to: 'users#create'

  #new_user
  get 'users', to: 'users#new', as: 'new_user'


  get 'users', to: 'users#edit', as: 'edit_user'


  get 'users/:id', to: 'users#show', as: 'user'

  patch 'users/:id', to: 'users#update'

  put 'users/:id', to: 'users#update'

  delete 'users/:id', to: 'users#destroy'
end
