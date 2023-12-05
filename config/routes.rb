Rails.application.routes.draw do
  get 'blogs' => 'blog#index' , as: 'home'
  get 'blogs/new' => 'blog#new', as: 'new'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create'
  get 'blogss/:id/edit' => 'blog#edit', as: 'edit_blog'
  patch 'blogs/:id' => 'blog#update'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'

  root 'blog#index' 
end
