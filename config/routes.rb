Rails.application.routes.draw do
  devise_for :users
  resources :posts

  post '/posts/:id/comments', to: 'posts#createComment'
  root to: 'welcome#index'
end
