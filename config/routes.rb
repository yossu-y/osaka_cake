Rails.application.routes.draw do

  root to: 'public/homes#top'

  namespace :public do

  end
  scope module: :public do
    devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  end





  # 管理者

  namespace :admin do
    resources :genres, only: [:index, :edit, :create, :update]
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
