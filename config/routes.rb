Communirb::Application.routes.draw do
  root "home#index"
  
  get 'my-account' => 'user#account', as: 'user_account'
  patch 'my-account' => 'user#account_save'
  
  get 'my-profile' => 'user#profile', as: 'user_profile'
  patch 'my-profile' => 'user#profile_save'
  
  get 'search' => 'user#search', as: 'user_search'
  
  devise_for :users
  
  get 'users/:user_name' => 'user#lookout'

  get 'search/users/:text' => 'user#users_search'
  
end