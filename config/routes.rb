Rails.application.routes.draw do
  resources :technologies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "home#index"

  get 'about', to: 'about#index'
  
  resources :projects
end
