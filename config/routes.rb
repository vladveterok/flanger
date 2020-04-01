Rails.application.routes.draw do
  resources :instruments
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new' 
  end
  get 'store/index'
  root 'instruments#index'
end