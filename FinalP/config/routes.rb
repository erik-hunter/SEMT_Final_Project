FinalProject::Application.routes.draw do
  resources :post
  
  authenticated :user do
    root :to => "home#authenticated_user_index"
  end
  
  root :to => "home#index"
  devise_for :users
  
  get 'declare_user_dead' => 'users#show_declare_dead_page'
  post 'send_users_posts' => 'users#send_users_posts'
end
