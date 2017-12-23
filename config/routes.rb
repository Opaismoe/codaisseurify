Rails.application.routes.draw do
  root to: "pages#home"

  resources :artist do
    resources :songs
  end
end
