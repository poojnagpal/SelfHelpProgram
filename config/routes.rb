Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'modules#index'
  # root to: 'programs#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  Rails.application.routes.draw do
  devise_for :users
    root to: 'modules#index'
  end

  resources :programs
  resources :sections
end
