Rails.application.routes.draw do
  resources :banners
  resources :contents
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :social_media
  devise_for :users
  resources :posts
  resources :brands
  resources :sectors
  resources :homes

  root 'pages#welcome'

  get 'pages/group' => 'pages#group', :path => 'group'

  get 'pages/contact' => 'pages#contact', :path => 'contact'

  # get 'pages/investor'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
