Rails.application.routes.draw do
  resources :brands
  resources :sectors

  root 'pages#welcome'
  
  get 'pages/group'

  get 'pages/contact'

  get 'pages/investor'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
