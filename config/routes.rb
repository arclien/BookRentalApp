Rails.application.routes.draw do
  
  get 'home' => 'static_pages#home'

  get 'help' => 'static_pages#help'

  
  devise_for :users
  root to: 'static_pages#home'
  
end
