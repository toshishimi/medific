Rails.application.routes.draw do
  devise_for :users
  root to: "receiveddates#index"
  resources :receiveddates, only: [:index, :new, :create]
end
