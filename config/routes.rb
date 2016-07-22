Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'blogs#index'

  get 'about' => 'about#index'

  resources :blogs do
    resources :comments, shallow: true
  end

  resources :tags, only: [:show, :index]
  resources :archives, only: [:show, :index]

end
