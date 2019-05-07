Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  get 'blogs' => 'blogs#index'
  get 'blogs/new' => 'blogs#new' 
  post 'blogs' => 'blogs#create'
  get   'comments/:id/edit'  => 'blogs#edit'
  patch   'comments/:id'  => 'blogs#update'
  delete 'comments/:id'  => 'blogs#destroy'
end
