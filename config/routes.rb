Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  # get "restaurants/:id", to: "restaurants#show"
  # get    'restaurants',          to: 'restaurants#index', as: :restaurants

  # post   'restaurants',          to: 'restaurants#create'

  # get    'restaurants/:id',      to: 'restaurants#show',   as: :restaurant

  # get    'restaurants/:id/edit', to: 'restaurants#edit',   as: :edit_restaurant
  # patch  'restaurants/:id',      to: 'restaurants#update'

  # delete 'restaurants/:id',      to: 'restaurants#destroy'
end
