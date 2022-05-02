Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end  
end