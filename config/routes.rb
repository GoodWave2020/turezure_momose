Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  root 'blogs#index'
  post '/callback' => 'linebot#callback'
end
