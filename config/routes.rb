Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :destroy, :update] do
    resources :contacts, only: :index
    resources :comments
    member do
      get 'favorites'
    end
  end
  resources :contacts, only: [:create, :show, :destroy, :update] do
    resources :comments
  end
  resources :contact_shares, only: [:create, :destroy]
  # get 'users' => 'users#index'
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new'
  # get 'users/:id/edit' => 'users#edit'
  # get 'users/:id' => 'users#show'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
end
