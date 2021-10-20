Rails.application.routes.draw do
  resources :transaction_products
  resources :transactions
  namespace :api do
    namespace :v1 do
      resources :users, except: [:create]
      resources :customers do 
        resources :users
      end
      
      # custom routes
      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'

      resources :products
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
