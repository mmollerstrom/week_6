Rails.application.routes.draw do
  get 'landing/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root controller: :landing, action: :index


  resources :articles do
    resources :comments
  end


end
