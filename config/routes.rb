Rails.application.routes.draw do
  resources :users
  resources :core_strength_classes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
