Rails.application.routes.draw do



  get 'dasboard/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root  'stories#index'
  # root to: "users#index"
  resources :stories 
  get 'mystories', to: 'stories#user_stories'
  get 'myprofile', to: 'stories#user_profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
