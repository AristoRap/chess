Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games, only: %i[create show destroy] do
    resources :moves, only: %i[create]
  end
end
