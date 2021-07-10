Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Read all
  get "/articles", to: "articles#index"

  #create
  get "/articles/new", to: "articles#new"
  post "/articles", to: "articles#create"

  #Read one
  get "/articles/:id", to: "articles#display_by_id", as: :article

  #edit
  get "/articles/:id/edit", to: "articles#edit"

  #update
  patch "/articles/:id", to: "articles#update"

  #delete
  delete "articles/:id", to: "articles#delete"

end
