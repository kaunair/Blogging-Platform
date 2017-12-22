Rails.application.routes.draw do
  get 'posts/new'

  get '/home', to: 'sessions#index' ,as: 'home'
  get '/bloggers', to: 'users#index', as: 'allusers'
  get '/signup', to: 'users#new', as: 'signup'
  get '/myblog', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
