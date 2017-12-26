Rails.application.routes.draw do
  root to: "artists#index"

  resources :artists, only: [:show, :index, :destroy] do
    resources :songs, only: [:create, :destroy]
  end

end
