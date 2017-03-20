Rails.application.routes.draw do

  # root 'site#home'
  root 'board#index'

  get 'rating'   => 'site#rating'
  get 'about'    => 'site#about'
  get 'i/:id'    => 'items#show', as: :short_link

  # get 'lp/:id'   => 'landings#show'

  class Subdomain
    def self.matches?(request)
      request.subdomain.present? && request.subdomain != 'www'
    end
  end

  constraints(Subdomain) do  
    resource :landing, only: "show", path: "/" do
      member do
        get '/:id' => "landings#show", as: :full
      end
    end
  end

  resources :bets
  resources :items
  resources :categories

  namespace :admin do
    root 'board#index'
    resources :items
    resources :categories
    resources :landings
  end

  devise_for :users

end
