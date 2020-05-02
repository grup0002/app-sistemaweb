Rails.application.routes.draw do
  get 'search/create'
  devise_for :users
  root to: 'home#index'
  resources :pacientes, except: [:show]
  resources :doctors, except: [:show]
  resources :historiaclinicas, except: [:show]
  resources :citamedicas, except: [:show]
  resources :citaclientes, except: [:show]
  resources :search, except: [:show]
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
