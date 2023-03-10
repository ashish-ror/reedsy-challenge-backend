Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index] do
      	patch ':code', action: :update, on: :collection
      	get 'price', action: :get_price, on: :collection
      end
    end
  end
end
