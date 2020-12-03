Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :listings
      resources :carts
      resources :items
      resources :users, only: [:create, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

 
end
