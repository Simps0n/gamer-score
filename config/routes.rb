Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  get "/admin", to: "admin#index"
end
