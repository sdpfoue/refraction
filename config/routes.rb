Src2::Application.routes.draw do
  devise_for :users
  #devise_for :visitors
  resources :tweets
  
  resources :tweets do
    resources :comments
  end
  
  resources :users do
    
  end
  
  resources :comments
  
  namespace :admin do
    get '/' =>'dashboard#show', :as=>:dashboard
    resources :users do
      
    end
  end

  root :to => "home#index"
end
