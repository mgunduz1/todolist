Rails.application.routes.draw do
  devise_for :users
  resources :todo_lists do
    resources :todo_items
  end
  namespace :todo_list do
    resources :todo_items
  end
   
  root to: "home#index"

end
