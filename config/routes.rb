Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'
get 'workshops', to: 'pages#workshops'
get 'archive', to: 'pages#archive'
get 'multimedia', to: 'pages#multimedia'
get 'contactus', to: 'contacts#new'
resources :contacts, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
