Rails.application.routes.draw do
  
  devise_for :users

  get 'top/index'
  get 'top', to:'top#index'

  resources :tasks , except: [:show]

  resources :groups , except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
