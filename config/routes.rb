Rails.application.routes.draw do
  resources :restaurants, only: [:create, :new, :show, :index] do
    resources :reviews, only: [:new, :create]
  end
end
