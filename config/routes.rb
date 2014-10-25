FoodTruck::Application.routes.draw do
  resources :trucks
  resources :locations
  root :to => 'locations#show'

  match '/about', to: 'locations#about'
  namespace :api do
    namespace :v1 do
      resources :locations, :trucks
    end
  end
end
