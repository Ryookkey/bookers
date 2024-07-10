Rails.application.routes.draw do
  root to: 'homes#top'
  # get 'books/index'
  # post 'books' => 'books#create'
  # get 'books/show'
  # get 'books/edit'
  # get '/top' => 'homes#top'
  resources :books
  patch 'books/:id' => 'books#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
