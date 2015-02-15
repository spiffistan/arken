Rails.application.routes.draw do

  devise_for :users

  resources :filings
  resources :records

  root 'main#index'

end
