Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index"
end
