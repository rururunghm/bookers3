Rails.application.routes.draw do
  get "/homes/about" => "homes#about",as: "about"
  resources :books, only: [ :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [ :create, :index, :show, :edit, :update]
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
