Rails.application.routes.draw do
  get 'exercises/kind_of_find'
  get 'exercises/aggregate'
  get 'exercises/handle_many_data'
  get 'exercises/handle_join'
  get 'exercises/actor'

  resources :stores
  resources :staffs
  resources :rentals
  resources :payments
  resources :languages
  resources :inventories
  resources :films
  resources :customers
  resources :countries
  resources :cities
  resources :categories
  resources :addresses
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'exercises#index'
end
