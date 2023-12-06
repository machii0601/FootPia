Rails.application.routes.draw do
  namespace :public do
    root to: 'homes#top'
    resources :homes, only: [ :about]
    resources :registrations, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
    resources :users, only: [:show, :edit, :update] do
      member do
        get :confirm
        patch :withdrawal
      end
    end
    resources :posts do
      resources :post_comments, only: [:new, :create, :index, :show]
    end
    resources :favorites, only: [:show, :create, :destroy]
    resources :groups
    resources :genres
    resources :follows, only: [:index, :create, :destroy] do
      member do
        get :followers
        get :followings
        delete :unfollow
      end
    end
    resources :events do
      collection do
        get :events
      end
    end
  end

  namespace :admin do
    root to: 'users#index'
    resources :users, only: [:index, :show, :edit, :update]
    resources :comments, only: [:destroy]
    resources :posts, only: [:destroy]
  end
end
