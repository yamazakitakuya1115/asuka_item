Rails.application.routes.draw do
  root to: 'items#search'
  resources :items, only: [:index]
  get 'search' => 'items#search'
end