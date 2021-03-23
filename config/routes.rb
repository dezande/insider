Rails.application.routes.draw do
  resources :players, only: [:new, :create]
end
