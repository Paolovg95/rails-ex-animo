Rails.application.routes.draw do
  devise_for :users
  devise_for :providers
  devise_for :shelters

  root to: 'pages#home'
end
