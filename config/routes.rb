Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ all restaurants
  get 'taks', to: 'tasks#index'
  # READ one restaurant

  get 'tasks/:id', to: 'tasks#show'
  # # CREATE one restaurant

  get 'tasks/new', to: 'tasks#new', as: 'new_restaurant'
  post 'tasks', to: 'tasks#create'
  # # UPDATE one restaurant
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # # DELETE one restaurant
  delete 'tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
