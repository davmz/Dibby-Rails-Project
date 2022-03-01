Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'home/index'
  # get 'types/index'
  # get 'types/show'
  # get 'animes/index'
  # get 'animes/show'
  # get 'genres/index'
  # get 'genres/show'
  # get 'producers/index'
  # get 'producers/show'
  # get 'studios/index'
  # get 'studios/show'
  # get 'studio/index'
  # get 'studio/show'
  # get 'mangas/index'
  # get 'mangas/show'

  ## Home page
  root to: "home#index"

  ## Anime
  resources :animes, only: [:index, :show] do
    collection do
      get "search"
    end

    # animes/search/(:format)
  end

  ## Genre
  resources :genres, only: [:index, :show]

  ## Type
  resources :types, only: [:index, :show]

  ## Manga
  resources :mangas, only: [:index, :show]

  ## Studio
  resources :studios, only: [:index, :show]

  ## Producer
  resources :producers, only: [:index, :show]
end
