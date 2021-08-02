Rails.application.routes.draw do
 resources :registrator, only: [:index, :create, :show]
 post '/login', to: 'login#logueo'
end
