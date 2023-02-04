Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do
    # nested resource for reviews instead of non resource routes in routes and reviews being rendered in dog house controller
    resources :reviews, only: [:show, :index]
  end
  resources :reviews, only: [:show, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
