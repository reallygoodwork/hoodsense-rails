Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'content/index'

  resources :units do
    resources :reviews
  end

  root 'content#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
