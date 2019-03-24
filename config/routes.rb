Rails.application.routes.draw do
  devise_for :stores, controllers: {
    registrations: 'stores/registrations',
    sessions: "stores/sessions",
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  get '/'=>'static_pages#home'
  get 'posts/new'=>'posts#new'
  get'info'=>'posts#info'
  get 'show/:id'=>'posts#show'
  get 'posts/edit/:id'=>'posts#edit'
  get 'store/:id'=>'static_pages#detail'
  get 'user/:id'=>'static_pages#detail'
  
  post 'posts/:id/response'=>'posts#resp'
  post'posts'=>'posts#create'
  patch'posts/:id'=>'posts#update'
  resources :posts, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
