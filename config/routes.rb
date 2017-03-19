Rails.application.routes.draw do

  root 'site#home'

  get 'rating'   => 'site#rating'
  get 'about'    => 'site#about'
  get 'l/:id'    => 'items#show', as: :short_link
  get 'lp/:id'   => 'landings#show'

  resources :items
  resources :categories
  resources :landings

  namespace :admin do
    root 'board#index'
    resources :items
    resources :categories
  end

  devise_for :users

end
