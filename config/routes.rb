Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:create]
      
      # custom routes
      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'

      resources :products
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
