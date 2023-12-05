Rails.application.routes.draw do
  get 'blogs' => 'blog#index' , as: 'home'
  get 'blogs/new' => 'blog#new', as: 'new'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create'
  get 'books/:id/edit' => 'blog#edit', as: 'edit_blog'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'

  root 'blog#index' 
end
