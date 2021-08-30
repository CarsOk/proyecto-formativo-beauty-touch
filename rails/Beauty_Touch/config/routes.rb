Rails.application.routes.draw do
  resources :clients
  resources :logins, only: [:create]
end
