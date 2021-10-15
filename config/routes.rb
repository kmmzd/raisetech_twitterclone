Rails.application.routes.draw do
 
 
  #get 'favorites/create'
  #get 'favorites/destroy'
  root 'tweets#index' #ルーティングで追加　 
  #get 'tweets/new'
  #get 'tweets/index'
  #get 'tweets/show'
  #get 'tweets/create'
  #get 'users/index'
  #get 'users/show'
  devise_for :users
  
  # ================Favorite関連。ここをネスト(入れ子)した形に変更
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  #======================================
 
  resources :users #ルーティングで追加
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
