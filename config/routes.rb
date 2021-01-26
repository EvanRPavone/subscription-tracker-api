Rails.application.routes.draw do
  # resources :subscription_categories
  resources :categories, only: [:index, :create]
  resources :subscriptions, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
