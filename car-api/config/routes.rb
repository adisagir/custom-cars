Rails.application.routes.draw do
  resources :bmw_wheels
  resources :mercedes_colors
  resources :bmw_colors
  resources :models
  resources :makes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
