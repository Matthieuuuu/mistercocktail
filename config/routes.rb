Rails.application.routes.draw do

  root to: 'cocktails#index'

  resources :cocktails
  resources :ingredients
  resources :doses

end
