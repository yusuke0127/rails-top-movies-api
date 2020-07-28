Rails.application.routes.draw do
  root to: 'pages#home'

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show]
      get '/search', to: 'movies#search', as: 'search'
    end
  end
end
