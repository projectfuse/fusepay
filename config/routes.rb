Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'

  resources :users do
    resources :blogs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
