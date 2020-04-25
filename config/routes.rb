Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :pacientes, except: [:show]
  resources :doctors, except: [:show]
  resources :historiaclinicas, except: [:show]
  resources :citamedicas, except: [:show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
