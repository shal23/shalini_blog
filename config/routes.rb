ShaliniBlog::Application.routes.draw do
 
  get "contact/index"
  match "contact" => "contact#index"

  resources :enquiries


  get "projects/index"
  match "projects" => "projects#index"

  get "admin/index"
  match "admin" => "admin#index"

 resources :enquirers

 #match 'tagged' => 'posts#tagged', :as => 'tagged'


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