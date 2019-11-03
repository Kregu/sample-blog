Rails.application.routes.draw do

  devise_for :users
  root to: 'articles#index'
  
  get 'home/index'
  
  get 'about', to: 'about#show'
  get 'terms', to: 'terms#show'
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
