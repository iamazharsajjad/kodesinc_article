Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :articles do 
    patch :marked_as_featured, to: 'articles#marked_as_featured'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
