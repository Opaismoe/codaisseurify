Rails.application.routes.draw do
  root to: "artists#index"
  # resources :songs, only: [:destroy]

  resources :artists do
    resources :songs
  end

end
