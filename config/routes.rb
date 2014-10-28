FoodTruck::Application.routes.draw do
  resources :trucks

  resources :locations

  resources :users
  
  root 'users#new'
end
