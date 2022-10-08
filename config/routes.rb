Rails.application.routes.draw do
  root 'movies#index'
  # root 'flizs#index'
  get 'flizs/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
