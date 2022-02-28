Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'home/index'
  # get 'types/index'
  # get 'types/show'
  # get 'animes/index'
  # get 'animes/show'

  # Home page
  root to: "home#index"

  resources :animes, only: [:index, :show] do
    collection do
      get "search"
    end

    # animes/search/(:format)
  end

  resources :types, only: [:index, :show]
end
