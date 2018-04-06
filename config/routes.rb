Rails.application.routes.draw do
  devise_for :users
  resources :posts

  get '/post/:id/comments', to: 'posts#fOff'
  post '/posts/:id/comments', to: 'posts#createComment'

  root to: 'welcome#index'
end
