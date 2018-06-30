Rails.application.routes.draw do
  
  devise_for :admins, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "home#index"

  get 'about', to: 'about#index'
  
  resources :technologies
  resources :projects
end
