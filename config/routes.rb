Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  devise_for :users, path: 'user', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'profile' }
  root 'home#index'
  get '/about', to: 'home#about'
  get '/:id', to: 'home#index'
end
