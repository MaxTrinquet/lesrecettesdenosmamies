Rails.application.routes.draw do
  devise_for :users
  root to: 'families#index'
  get 'home', to: 'families#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :families
  resources :users do
    resources :recipes
  end
end
