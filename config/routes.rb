Rails.application.routes.draw do
  resources :liked_pictures
  resources :pictures
  resources :categories
  resources :users
  
  get 'logged_in', to: 'sessions#logged_in?'
  delete 'logout', to: 'sessions#logout'

  resources :sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
