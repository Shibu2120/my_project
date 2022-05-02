Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # resources :customers do
  #   member do
  #     get :preview_customer
  #   end 
  # end

  resources :customers do
    get :preview_customer
  end

  resources :books do
    collection do
      get "books_order_by_name", to: "books#books_order_by_name"
    end
  end
  
  resources :suppliers
  resources :authors do 
    collection do 
      get "hash_range", to: "authors#hash_range"
    end 
  end 

  resources :orders
end
