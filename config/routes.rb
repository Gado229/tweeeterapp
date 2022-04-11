Rails.application.routes.draw do
  root to: 'twits#index'
resources :twits do
  collection do
    post :confirm
  end
end
end
