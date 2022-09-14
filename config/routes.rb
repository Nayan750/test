Rails.application.routes.draw do
  root 'home#index'
  match '/about',  to: 'home#about',via: 'get'
  match '/contact',  to: 'home#contact',via: 'get'
  match '/brands',  to: 'home#brands',via: 'get'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:new, :create]

end
