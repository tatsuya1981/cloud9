Rails.application.routes.draw do
  get "/books", to: "books#index"
  post "/books", to: "books#create"
  get "/books/new", to: "books#new", as: "new_book"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  get "books/:id/edit", to: "books#edit", as: "edit_book"
  get "books/:id", to: "books#show", as:"book"
  patch "/books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy" 

  # Defines the root path route ("/")
  # root "posts#index"
end
