FinalProject::Application.routes.draw do
  resources :Post

  authenticated :user do
    root :to => "home#authenticated_user_index"
  end
  
  root :to => "home#index"
  devise_for :users
  
end
