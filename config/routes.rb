Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'
  get '/article', to: 'home#article'
end
