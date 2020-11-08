Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  resorces :rooms, only: [:index, :new, :create, :update] do
    member do 
      get 'assign'
    end
  end
end
