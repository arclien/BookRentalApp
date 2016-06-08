Rails.application.routes.draw do
  
  get 'home' => 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  devise_for :users
  root to: 'static_pages#home'
  
end
