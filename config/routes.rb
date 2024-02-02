Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'players#index'

  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :create, :update, :destroy,]

      get 'football_data/arsenal', to: 'football_data#arsenal_data'
      get 'football_data/matches', to: 'football_data#matches_data'
    end
  end
end
