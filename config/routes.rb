Rails.application.routes.draw do
  resources :makes
  resources :posts
  root "posts#index"
end
