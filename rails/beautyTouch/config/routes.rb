Rails.application.routes.draw do
resources  :clients, only: [:index, :create, :show]
post '/login', to: 'login#logueo'
  end
