Rails.application.routes.draw do
  resources :items, only: [:create, :new, :update, :edit]
  resources :tables
  root 'tables#index'
end

