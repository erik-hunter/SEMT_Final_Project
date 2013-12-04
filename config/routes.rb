FinalProject::Application.routes.draw do
  resources :Post

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  
end
