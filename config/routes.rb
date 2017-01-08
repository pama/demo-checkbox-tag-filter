Rails.application.routes.draw do
  get 'dashboard/index'

  resources :tags
  resources :countries

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
