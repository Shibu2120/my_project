Rails.application.routes.draw do
  resources :migrations
  resources :friends
  resources :companies 
  resources :users

  root "articles#index"
  
  resources :employees do
    resources :feedbacks
    resources :accounts
  end
  resources :socialplateforms
  resources :employee_social_accounts
   
  resources :user_accounts
  resources :user_histories

  resources :articles do 
    resources :comments
  end
end

  # get "/articles", to: "articles#index"
  # post "/articles", to: "articles#create"
  # get "/article/new", to: "articles#new"
  # get "/article/:id", to: "articles#show"


  # get "/friends", to: "friends#index"
  # get "/friends/new", to: "friends#new"
  # get "/friends/show", to: "friends#show"
  # get "/friends/_form", to: "friends#_form"
  # get "/friends/edit", to: "friends#edit"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :articles

