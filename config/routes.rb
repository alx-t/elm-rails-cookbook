Rails.application.routes.draw do
  root to: "welcome#index"

  resources :recipes, only: [:index, :show]
end
