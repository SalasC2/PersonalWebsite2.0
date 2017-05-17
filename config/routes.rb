Rails.application.routes.draw do
  root "home#index"
  resources "home", only: [:new, :create]
  # match '/contacts',     to: 'home#index',  via: 'get'
  # resources "contacts", only: [:new, :create]
end
