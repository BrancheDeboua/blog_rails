Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'home#index'
  get '/about', to: 'home#about'
  get '/article', to: 'home#article'
end
