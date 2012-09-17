Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :auctions do
	resources :bits
  end
  
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
