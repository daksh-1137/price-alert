require 'sidekiq/web'
Rails.application.routes.draw do
  resources :alerts
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "alerts#index"
  mount Sidekiq::Web => "/sidekiq"
end
