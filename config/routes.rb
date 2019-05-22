Rails.application.routes.draw do

resources :plants, only: :destroy

  resources :gardens do
    resources :plants, only: :create
  end



  root to: 'gardens#index'
end
