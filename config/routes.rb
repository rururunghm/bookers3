Rails.application.routes.draw do
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  resources :books, only: [ :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [ :create, :index, :show, :edit, :update]
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
