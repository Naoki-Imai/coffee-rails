Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get "users/show/:name" => 'users#show'
  resources :stores
  devise_for :users
  root 'homes#top'
end
