Rails.application.routes.draw do
  resources :posts
  get "users/show"
  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  get 'user/:id', to: 'users#show', as: 'user'
  # Defines the root path route ("/")
  # root "articles#index"
  get "pages/lista"


end