Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments do
      resources :subcomments
    end
  end
  root "posts#index"

  get '/about', to: 'pages#about'
  get '/avatar', to: 'pages#avatar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
