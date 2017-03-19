Rails.application.routes.draw do


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
        get '/:id' => "landings#show"
      end
    end
  end

  root 'site#home'

  resources :items
  resources :categories

  namespace :admin do
    root 'board#index'
    resources :items
    resources :categories
  end

  devise_for :users

end
