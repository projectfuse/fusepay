Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'

  resources :users do
    resources :blogs
  end

  # resources :users, only: %i[index show update create destroy edit]

  resources :payment_link

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
