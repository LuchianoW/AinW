# config/routes.rb
Rails.application.routes.draw do
  root to: redirect('/login')
  get 'home', to: 'home#index'  # home页面的路由
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/signup", to: "signups#new"
  post "/signup", to: "signups#create"
  get "posts/new", to: "posts#new", as: "new_post"  # 为 Post 页面定义新路由
  resources :users do
    resources :posts
  end
  get '/users/:id/page', to: 'users#user_page', as: 'user_page'
  resources :posts, only: [:new, :create]
end

