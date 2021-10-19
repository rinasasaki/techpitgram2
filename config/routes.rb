Rails.application.routes.draw do
  devise_for :users, # ここの行にカンマを追加
    controllers: { registrations: 'registrations' } # ここの行を追加

  root 'pages#home'

  get '/users/:id', to: 'users#show', as: 'user'
  # usersコントローラーのshowアクションのルーティング

  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  post '/posts/:post_id/photos', to: 'photos#create', as: 'post_photos'
  #postsコントローラーのnewアクション。投稿ページを表示するルーティング、 postsコントローラーのcreateアクション。投稿を作成するルーティング、photosコントローラーのcreateアクション。投稿の写真を保存するルーティング
end
