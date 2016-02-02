Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :brands
  resources :sectors

  root 'pages#welcome'

  get 'pages/group' => 'pages#group', :path => 'group'

  get 'pages/contact' => 'pages#contact', :path => 'contact'

  # get 'pages/investor'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
