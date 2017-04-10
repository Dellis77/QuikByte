
Rails.application.routes.draw do

  resources :users_has_recipes
  resources :users_has_ingredients
  resources :recipes_has_ingredients
  resources :recipes
  resources :ingredients do
    resources :users_has_ingredients, only: [:create, :destroy, :delete, :show ]
  end
  
  get 'users/show'
  get 'users_has_ingredients/show'

  devise_for :users, controllers: { registrations: "registrations" }
 
  resources :posts
  root 'users_has_ingredients#index' #this is the home page so this will show up first so folder posts file index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
