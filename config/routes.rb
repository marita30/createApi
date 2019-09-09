Rails.application.routes.draw do
  resources :entrada_salidas
  post 'user_token' => 'user_token#create'
   # normal users can access to their information in the controller user
  get 'current_user/details' => 'user#current_user_details'
  resources :users
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
