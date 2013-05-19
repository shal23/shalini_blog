ShaliniBlog::Application.routes.draw do
 
 resources :enquirers

 #match 'tagged' => 'posts#tagged', :as => 'tagged'


  get "contact/index", :id => "contact"
  match "contact" => "contact#index"

  get "blog/index",:id => "blog"
  match "blog" => "blog#index"

  resources :posts do
   resources :comments
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end