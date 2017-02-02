Rails.application.routes.draw do
  resources :filmes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get 'index', to: 'filmes#index'
end
