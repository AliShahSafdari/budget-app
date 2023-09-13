Rails.application.routes.draw do
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'splash#index'
  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end
  unauthenticated do
    root "splash#index"
  end
  resources :group_expenses
  resources :expenses
  resources :groups
  # resources :users

end
