Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :articles do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show]
  get 'my_bookings', to: 'pages#my_bookings'
  get 'my_articles', to: 'pages#my_articles'
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"
