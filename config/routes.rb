Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :bookings
    resources :reviews
  end
end
