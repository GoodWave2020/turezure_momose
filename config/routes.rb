Rails.application.routes.draw do
  get 'comments/create'
  resources :blogs do
    resources :comments
  end
  root 'blogs#index'
end
