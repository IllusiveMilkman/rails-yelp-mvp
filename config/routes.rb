Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :show, :new, :create]
  end

  # namespace :admin do
  #   resources :restaurants, only: [:edit, :update, :destroy]
  # end
end
