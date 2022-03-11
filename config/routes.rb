Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'
  get '/article', to: 'home#article'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
