Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'comments/destroy'

  resources :posts do
    resources :comments
  end
  devise_for :users

  root :to => 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
