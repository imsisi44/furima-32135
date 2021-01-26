Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, only: [:index, :new, :create, :show, :edit, :updatea, :destroy] do
    resources :orders, only: [:create, :index]
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :categories, only: :show
  resources :users, only: :show
end
