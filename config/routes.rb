Feeder::Application.routes.draw do
  root to: 'static_pages#home'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  
  resources :user_feeds, only: [:update]
  resources :read_articles, only: [:update]
  resources :saved_for_laters, only: [:create, :destroy]
  resources :comments, only: [:create]
  
  namespace :api, :defaults => { :format => :json } do
    get '/user', to: 'users#show'
    resources :categories, :only => [:index, :show]
    resources :feeds, :only => [:show]
    get '/showSaved', to: 'articles#showSaved'
    resources :comments, :only => [:index]
    get '/search', to: 'searches#show'
  end
  
end
