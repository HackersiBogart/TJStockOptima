Rails.application.routes.draw do
  resources :preorders
  get 'pages/dashboard'
  resources :colors
  resources :customers
  resources :products
  resources :pages
  #get 'home/index'

  get 'home/About_us'
  get 'home/index'
  get 'home/colors'
  get 'home/pages'

    resources :pages, only: [:index]
    # or, if using the index as the homepage
    root 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
