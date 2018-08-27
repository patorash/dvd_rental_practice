Rails.application.routes.draw do
  get 'exercises/index'
  get 'exercises/kind_of_find'
  get 'exercises/aggregate'
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
  root 'stores#index'
end
