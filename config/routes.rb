Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  post "contact_created" => "contacts_mailer#contact_created"
  root 'home#index'
  get 'home/about'
  match '/services', to: 'home#services', via: 'get'
  match '/about', to: 'home#about', via: 'get'
  match '/thank-you',  to: 'home#thankyou',via: 'get'
  match '/contact',  to: 'home#contact',via: 'get'
  match '/brands',  to: 'home#brands',via: 'get'
  match '/our-team', to: 'home#team', via: 'get'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:new, :create]
  
  # resources :notes
  # post 'download/notes', to: 'notes#download'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
