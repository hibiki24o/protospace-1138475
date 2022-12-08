Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to:"prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy, :create] do
       resources :comments,   only: [:create, :show]
  end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
