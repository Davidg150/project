Rails.application.routes.draw do
  resources :countries
  resources :leagues
  resources :categories
  get 'orderjerseys/index'
  get 'orderjerseys/show'
  get 'orderjerseys/new'
  get 'orderjerseys/edit'
 
 
 
 
  resources :orders do 
    resources:orderjerseys
  end

  devise_for :users do 
    resources :orders 
  end
  
  get '/checkout' => 'cart#createOrder'
  
  
  get '/paid/:id' => 'static_pages#paid'
  
  post '/search' => 'jerseys#search'
  
  
  get 'cart/index'
  resources :jerseys
   root 'static_pages#home'
  get '/products' => 'static_pages#products'
  get '/contact' => 'static_pages#contact'
  
    get '/login' => 'user#login' 
    get '/logout' => 'user#logout'
    
    get '/cart', to: 'cart#index'
    get '/cart/:id' => 'cart#add'
    get '/clearcart', to: 'cart#clearCart'
    get '/cart/remove/:id' => 'cart#remove'
    get '/cart/decrease/:id' => 'cart#decrease'
    
    
    root :to => 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
