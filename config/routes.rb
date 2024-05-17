Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  get 'admin', to: 'admin#index'
  resources :video_games, path: 'admin/games'
end
