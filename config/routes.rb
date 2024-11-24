Rails.application.routes.draw do
  get 'conduits/home', to: 'conduits#home'
  get 'conduits/create', to: 'conduits#create'
  get 'conduits/edit', to: 'conduits#edit'
  get 'conduits/article', to: 'conduits#article'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
