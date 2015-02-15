Rails.application.routes.draw do

  devise_for :users

  resources :series
  resources :fonds
  resources :filings
  resources :records

  root 'main#index'

end
