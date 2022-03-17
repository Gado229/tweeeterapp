Rails.application.routes.draw do

  get 'twits/index'
  root to: 'twits#index'
  resources :twits
end
