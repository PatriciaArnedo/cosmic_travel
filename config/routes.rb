Rails.application.routes.draw do
  resources :planets, only: [:index, :show]
  resources :scientists
  resources :missions, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
