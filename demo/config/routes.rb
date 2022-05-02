Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

   get 'demos/index'
   get 'demos/hello'
   get 'demos/hello1'
   get 'demos/youtube'

   resources :users

   resources :hotels do
      resources :reviews
   end   
   
   root "users#index"
end
