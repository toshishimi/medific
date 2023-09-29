Rails.application.routes.draw do
  devise_for :users
  root to: "received_dates#index"
  resources :received_dates, only: [:index, :new, :create, :show]
end
