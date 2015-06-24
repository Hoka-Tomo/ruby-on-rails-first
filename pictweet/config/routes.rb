Rails.application.routes.draw do
  devise_for :users
  get 'tweets' => 'tweets#index'     #ツイート一覧画面
  get 'tweets/new' => 'tweets#new'   #ツイート投稿画面
  post 'tweets' => 'tweets#create'   #ツイート投稿機能
  get '/users/:id' => 'users#show'
  delete '/tweets/:id' => 'tweets#destroy'
  get '/tweets/:id/edit' => 'tweets#edit'
  patch '/tweets/:id' => 'tweets#update'
  root 'tweets#index'
end

