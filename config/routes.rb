Rails.application.routes.draw do
  get 'conduits/index', to: 'conduits#index'

  resources :conduits
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
