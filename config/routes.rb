Rails.application.routes.draw do
  root to: 'roots#index'
  get 'posts', to: 'posts#index'
  get 'sns/index'
  get 'intros/index'
  get 'contacts/index'
  resources :posts
end
