Rails.application.routes.draw do
  root to: 'articles#index'

  # add a loop to apply to all the articles and select

  resources :articles do
    collection do
      get :top
    end

    member do
      get :name
    end

    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end

  # # R
  # # all articles
  # get '/articles', to: 'articles#index'
  # # 1 article
  # get '/articles/:id', to: 'articles#show'

  # # C
  # # form
  # get '/articles/new', to: 'articles#new'
  # # create
  # post '/articles', to: 'articles#create'

  # # U
  # # form
  # get 'articles/:id/edit', to: 'articles#edit'

  # # update
  # patch 'articles/:id', to: 'articles#update'

  # # D
  # delete 'articles/:id', to: 'articles#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
