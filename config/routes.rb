Rails.application.routes.draw do
  devise_for :users
  root to: 'familles#index'
  get 'home', to: 'familles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :familles do
    resources :recettes
  end
end
