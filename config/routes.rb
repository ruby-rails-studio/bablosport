Rails.application.routes.draw do

  root 'site#home'

  get 'rating'   => 'site#rating'
  get 'about'    => 'site#about'
  get 'i/:id'    => 'items#show', as: :short_link

  get 'lp/:id'   => 'landings#show'

  get 'r', to: 'site#rating', constraints: { subdomain: 'admin' }

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
