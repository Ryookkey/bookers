Rails.application.routes.draw do
  root to: 'homes#top'
  # get 'books/index'
  # post 'books' => 'books#create'
  # get 'books/show'
  # get 'books/edit'
  # get '/top' => 'homes#top'
  resources :books
  # delete '/books/:id' => 'books#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
