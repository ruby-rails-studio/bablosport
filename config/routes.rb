Rails.application.routes.draw do

  root 'site#home'

  get 'rating'   => 'site#rating'
  get 'about'    => 'site#about'
  get 'i/:id'    => 'items#show', as: :short_link

  # get 'lp/:id'   => 'landings#show'

  # get '/', to: 'landings#show', constraints: { subdomain: ':id' }

class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != 'www'
  end
end

  constraints(Subdomain) do  
    resource :landing, path: "/:id" do
      member do
        get '/lp'   => 'landings#show'
      end
    end
  end


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
