Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'

  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'

  resource :contacts, only: [:new, :create], path_names: { new: '' }
  resources :articles do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
