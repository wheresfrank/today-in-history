Rails.application.routes.draw do
  get 'articles/index'
  get 'births/index'
  get 'deaths/index'
  get 'holidays/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
