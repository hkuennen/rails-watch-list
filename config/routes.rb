Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root to: "lists#index"
  # root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]

  # get 'new', to: 'lists#new', as: :lists
  # post 'lists', to: 'lists#create'
  # get ':list_id', to: 'bookmarks#show', as: :list
  # delete 'new', to: 'bookmarks#destroy'
  # get ':list_id/:bookmark_id', to: 'movies#show' 

end
