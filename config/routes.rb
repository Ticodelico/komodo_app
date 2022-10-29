Rails.application.routes.draw do
  resources :suscriptions
  get 'public/index' 
  devise_for :users # default custom method for rendering all routing


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public#index"
   resources :restaurants, only: [:index, :show]


  namespace :admin do
    # Add dashboard for your models here
       resources :restaurants
       resources :suscriptions
       root to: "restaurants#index"
    end
end
