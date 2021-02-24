# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'application#index'

  resources :products, only: :index
  resources :categories, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
