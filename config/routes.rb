Rails.application.routes.draw do
  get 'coffees' => 'coffees#index'
  get 'coffees/edit'
  get 'coffees/new'
  get 'coffees/show'
  get 'users/index' => 'users#index'
  get "users/show/:name" => 'users#show'
  devise_for :users
  root 'homes#top'
end
