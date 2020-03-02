Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders
  resources :products, except: :show
	get '/products/dashboard', to: 'products#dashboard', as: :dashboard
  root to: 'products#index'
end
