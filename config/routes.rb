Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:create]
      resources :customers do 
        resources :users
      end
      resources :sales
      resources :sale_products
      resources :products
      
      # custom routes
      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
