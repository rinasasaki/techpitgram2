Rails.application.routes.draw do
  devise_for :users, # ここの行にカンマを追加
    controllers: { registrations: 'registrations' } # ここの行を追加

    root 'posts#index'

  get '/users/:id', to: 'users#show', as: 'user'
  # usersコントローラーのshowアクションのルーティング


  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)

    resources :likes, only: %i(create destroy)
  end

end
