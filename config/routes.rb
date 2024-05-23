Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "application#index"

  get 'admin', to: 'admin#index'
  resources :video_games, path: 'admin/games'
end
