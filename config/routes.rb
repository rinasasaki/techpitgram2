Rails.application.routes.draw do
  devise_for :users
  # この行を編集する
  root 'pages#home'
end
