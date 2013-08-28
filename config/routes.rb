FoodTruck::Application.routes.draw do
  resources :trucks
  resources :locations
  root :to => 'locations#show'

  match '/about', to: 'locations#about'
end
