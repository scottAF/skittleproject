Rails.application.routes.draw do
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
end
