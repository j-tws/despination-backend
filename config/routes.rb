Rails.application.routes.draw do
  get 'category/new'
  get 'category/create'
  get 'category/index'
  get 'category/show'
  get 'category/edit'
  get 'category/update'
  get 'category/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :destinations, :users, :planners, :category, :attractions, :events


end
