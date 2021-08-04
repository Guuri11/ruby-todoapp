Rails.application.routes.draw do
  # resources manages to create all crud routes
  resources :todos
  resources :todo
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
