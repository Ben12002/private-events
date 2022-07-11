Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
  resources :events, only: [:new, :create, :index, :show]
  resources :attendee_events, only: [:create]
  resources :users, only: [:show]
  # get "/users/:id", to: "users#show"

end
