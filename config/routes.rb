Rails.application.routes.draw do
  get 'posts/new'

  root to: 'sessions#index' ,as: 'home'
  get '/bloggers', to: 'users#index', as: 'allusers'
  get '/signup', to: 'users#new', as: 'signup'
  get '/myblog', to: 'sessions#show', as: 'myblog'
  get '/logout', to: 'sessions#destroy', as: 'logout'
	get '/login', to: 'sessions#new', as: 'login'
  get '/edit', to: 'users#update', as: 'edit'
  get '/change_picture', to: 'users#update', as: 'change_picture'
  patch '/change_picture', to: 'users#update', as: 'change'

  resources :users, :posts, :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
