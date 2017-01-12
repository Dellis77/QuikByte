Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :posts
  root 'posts#index' #this is the home page so this will show up first so folder posts file index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
