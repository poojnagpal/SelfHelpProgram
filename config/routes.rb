Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  # devise_scope :user do
  #   get 'login', to: 'devise/sessions#new'
  # end

  # match '/user' => "programs#index", :as => :user_root

  resources :home_page


  devise_scope :user do
    unauthenticated do
      root :to => 'static_pages#home'
    end
  end

  devise_scope :user do
    authenticated do
      root :to => 'devise/sessions#new'
    end
  end

  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  Rails.application.routes.draw do
    devise_for :users
      root to: 'programs#index'
  
  end

  resources :programs
  resources :sections
  # collection do
  #   get :next
  # end
  get '/button', to: 'sections_controller#button', as: 'button'


end
